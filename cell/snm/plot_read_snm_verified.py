#!/usr/bin/env python3
"""Read-SNM geometric check: largest axis-aligned square inside each butterfly lobe.
Requires numpy, scipy, shapely, matplotlib. Numerical geometric estimate, not silicon measurement.
"""
from pathlib import Path
import numpy as np
import matplotlib.pyplot as plt
from scipy.interpolate import PchipInterpolator
from scipy.optimize import differential_evolution, minimize
from shapely.geometry import LineString, Polygon, box
from shapely.ops import unary_union, polygonize

DATA = Path(__file__).with_name('read_snm_vtc.dat')
a = np.loadtxt(DATA)
assert a.ndim == 2 and a.shape[1] >= 6
n1,q,qb = a[:,1],a[:,3],a[:,5]
assert np.all(np.diff(n1)>0)
curve1=np.column_stack((n1,q))
curve2=np.column_stack((qb,q))
# Polygonize the bounded faces between the two VTCs.
network=unary_union([LineString(curve1),LineString(curve2)])
faces=sorted([p for p in polygonize(network) if p.area>1e-5],key=lambda p:p.area,reverse=True)
if len(faces)<2:
    raise RuntimeError(f'Expected two bounded butterfly lobes, got {len(faces)}')
faces=sorted(faces[:2],key=lambda p:p.centroid.x)

# For a given side length s, a square is feasible only if fully covered by the lobe.
# Optimization is over center and side, with a numerical objective that rewards
# covered area and penalizes the uncovered portion. Final geometry is checked exactly
# against piecewise-linear sampled VTC curves by shapely.
results=[]
for i,region in enumerate(faces):
    minx,miny,maxx,maxy=region.bounds
    def loss(z):
        cx,cy,s=z
        sq=box(cx-s/2,cy-s/2,cx+s/2,cy+s/2)
        missing=s*s-region.intersection(sq).area
        return -s + 5000*missing/max(s*s,1e-9)
    bounds=[(minx,maxx),(miny,maxy),(0.001,min(maxx-minx,maxy-miny))]
    opt=differential_evolution(loss,bounds,tol=1e-9,popsize=20,maxiter=1000,seed=13+i,polish=True)
    # Repair near-boundary numerical solutions by shrinking the square around its center.
    cx,cy,s=opt.x
    lo,hi=0.,s
    for _ in range(55):
        mid=(lo+hi)/2
        sq=box(cx-mid/2,cy-mid/2,cx+mid/2,cy+mid/2)
        if region.covers(sq): lo=mid
        else: hi=mid
    results.append((lo,cx,cy,region))
    print(f'Lobe {i+1}: square side={lo:.6f} V, center=({cx:.6f}, {cy:.6f}), lobe area={region.area:.5f}')

snm=min(r[0] for r in results)
print(f'Geometric polygon estimate (weaker lobe): {snm:.6f} V = {snm*1000:.2f} mV')
print('Caution: discretized curves + numerical optimization; convergence/physical setup require independent verification.')
fig,ax=plt.subplots(figsize=(7,7))
ax.plot(n1,q,label='VTC1: Q vs N1')
ax.plot(qb,q,label='VTC2: Q vs QB')
for i,(s,cx,cy,reg) in enumerate(results):
    x,y=box(cx-s/2,cy-s/2,cx+s/2,cy+s/2).exterior.xy
    ax.plot(x,y,label=f'Lobe {i+1} inscribed square: {s*1000:.1f} mV')
ax.set(xlim=(0,5),ylim=(0,5),xlabel='Voltage (V)',ylabel='Voltage (V)',title=f'TR-10 Read SNM geometric check: {snm*1000:.1f} mV')
ax.set_aspect('equal');ax.grid(True);ax.legend(fontsize=8)
fig.tight_layout()
out=Path(__file__).with_name('read_snm_geometric_check.png')
fig.savefig(out,dpi=200)
print('Saved:',out)
