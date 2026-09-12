import numpy as np
import matplotlib.pyplot as plt
from scipy.interpolate import PchipInterpolator

# ============================================================
# TR-10 6T SRAM Read SNM Analysis
#
# Input:
#   read_snm_vtc.dat
#
# ngspice:
#   wrdata read_snm_vtc.dat v(n1) v(q) v(qb)
#
# Current wrdata format:
#   column 2 = N1
#   column 4 = Q
#   column 6 = QB
#
# Output:
#   read_snm_butterfly_square.png
#   read_snm_extraction.png
# ============================================================

print("=== TR-10 SRAM Read SNM analysis start ===")

VDD = 5.0
DATA_FILE = "read_snm_vtc.dat"

# ------------------------------------------------------------
# Load ngspice data
# ------------------------------------------------------------

data = np.loadtxt(DATA_FILE)

if data.shape[1] < 6:
    raise ValueError(
        "read_snm_vtc.dat must contain at least 6 columns."
    )

n1 = data[:, 1]
q  = data[:, 3]
qb = data[:, 5]

print(f"data file  : {DATA_FILE}")
print(f"data shape : {data.shape}")
print(f"N1 range   : {n1.min():.3f} -> {n1.max():.3f} V")
print(f"Q range    : {q.min():.3f} -> {q.max():.3f} V")
print(f"QB range   : {qb.min():.3f} -> {qb.max():.3f} V")

# ============================================================
# Butterfly curves
#
# Curve 1 = (N1, Q)
# Curve 2 = (QB, Q)
# ============================================================

x1 = n1
y1 = q

x2 = qb
y2 = q

# ------------------------------------------------------------
# 45-degree coordinate transform
#
# xr = (x - y) / sqrt(2)
# yr = (x + y) / sqrt(2)
# ------------------------------------------------------------

sqrt2 = np.sqrt(2.0)

xr1 = (x1 - y1) / sqrt2
yr1 = (x1 + y1) / sqrt2

xr2 = (x2 - y2) / sqrt2
yr2 = (x2 + y2) / sqrt2

# ------------------------------------------------------------
# Sort data for interpolation
# ------------------------------------------------------------

idx1 = np.argsort(xr1)
idx2 = np.argsort(xr2)

xr1 = xr1[idx1]
yr1 = yr1[idx1]

xr2 = xr2[idx2]
yr2 = yr2[idx2]

# Remove duplicate rotated-x values if any
xr1_unique, idx1_unique = np.unique(xr1, return_index=True)
yr1_unique = yr1[idx1_unique]

xr2_unique, idx2_unique = np.unique(xr2, return_index=True)
yr2_unique = yr2[idx2_unique]

# Monotonic interpolation
f1 = PchipInterpolator(xr1_unique, yr1_unique)
f2 = PchipInterpolator(xr2_unique, yr2_unique)

# ------------------------------------------------------------
# Common valid rotated-x range
# ------------------------------------------------------------

xmin = max(xr1_unique.min(), xr2_unique.min())
xmax = min(xr1_unique.max(), xr2_unique.max())

xr = np.linspace(
    xmin,
    xmax,
    200001
)

yy1 = f1(xr)
yy2 = f2(xr)

# Distance between butterfly curves in rotated coordinates
distance_rot = np.abs(yy1 - yy2)

# Convert diagonal distance to square side
square_side = distance_rot / sqrt2

# ------------------------------------------------------------
# Split into two butterfly lobes
# ------------------------------------------------------------

left_mask  = xr < 0
right_mask = xr > 0

left_indices  = np.where(left_mask)[0]
right_indices = np.where(right_mask)[0]

idx_left = left_indices[
    np.argmax(square_side[left_mask])
]

idx_right = right_indices[
    np.argmax(square_side[right_mask])
]

snm_left  = square_side[idx_left]
snm_right = square_side[idx_right]

# SRAM SNM = weaker lobe
snm = min(snm_left, snm_right)

if snm_left <= snm_right:
    idx_snm = idx_left
else:
    idx_snm = idx_right

# ------------------------------------------------------------
# Largest square position
# ------------------------------------------------------------

xr_snm = xr[idx_snm]

yr_a = yy1[idx_snm]
yr_b = yy2[idx_snm]

yr_center = (yr_a + yr_b) / 2.0

# Inverse rotation
xc = (yr_center + xr_snm) / sqrt2
yc = (yr_center - xr_snm) / sqrt2

side = snm
half = side / 2.0

square_x = [
    xc - half,
    xc + half,
    xc + half,
    xc - half,
    xc - half
]

square_y = [
    yc - half,
    yc - half,
    yc + half,
    yc + half,
    yc - half
]

# ------------------------------------------------------------
# Contact points
# ------------------------------------------------------------

def inverse_rotate(xr_val, yr_val):
    x_orig = (yr_val + xr_val) / sqrt2
    y_orig = (yr_val - xr_val) / sqrt2
    return x_orig, y_orig

p1x, p1y = inverse_rotate(xr_snm, yr_a)
p2x, p2y = inverse_rotate(xr_snm, yr_b)

# ============================================================
# Print result
# ============================================================

print()
print("========================================")
print(" TR-10 6T SRAM Read SNM")
print("========================================")
print(f"VDD             = {VDD:.3f} V")
print(f"Left lobe SNM   = {snm_left:.6f} V")
print(f"Right lobe SNM  = {snm_right:.6f} V")
print("----------------------------------------")
print(f"Read SNM        = {snm:.6f} V")
print(f"                = {snm * 1000:.1f} mV")
print(f"SNM / VDD       = {snm / VDD * 100:.2f} %")
print("========================================")
print()

# ============================================================
# Figure 1
# Read Butterfly Curve + largest square
# ============================================================

plt.figure(figsize=(7, 7))

plt.plot(
    x1,
    y1,
    linewidth=1.8,
    label="VTC1: Q vs N1"
)

plt.plot(
    x2,
    y2,
    linewidth=1.8,
    label="VTC2: Q vs QB"
)

plt.plot(
    [0, VDD],
    [0, VDD],
    "--",
    linewidth=1.0,
    label="y = x"
)

# Largest embedded square
plt.plot(
    square_x,
    square_y,
    linewidth=2.0,
    label=f"Max square: SNM = {snm:.3f} V"
)

# Contact points
plt.scatter(
    [p1x, p2x],
    [p1y, p2y],
    s=45,
    zorder=5,
    label="SNM contact points"
)

# Dimension arrow
arrow_x = xc
arrow_y1 = yc - half
arrow_y2 = yc + half

plt.annotate(
    "",
    xy=(arrow_x, arrow_y2),
    xytext=(arrow_x, arrow_y1),
    arrowprops=dict(
        arrowstyle="<->",
        linewidth=1.6
    )
)

plt.text(
    arrow_x + 0.08,
    yc,
    f"SNM = {snm:.3f} V",
    va="center",
    fontsize=10
)

plt.xlabel("Voltage (V)")
plt.ylabel("Voltage (V)")

plt.title(
    "TR-10 6T SRAM Read Butterfly Curve\n"
    f"SNM = {snm:.3f} V ({snm * 1000:.0f} mV)"
)

plt.xlim(0, VDD)
plt.ylim(0, VDD)

plt.axis("equal")
plt.grid(True)
plt.legend(loc="best")

plt.tight_layout()

plt.savefig(
    "read_snm_butterfly_square.png",
    dpi=300
)

print("saved: read_snm_butterfly_square.png")

# ============================================================
# Figure 2
# Rotated-coordinate SNM extraction
# ============================================================

plt.figure(figsize=(8, 5))

plt.plot(
    xr,
    square_side,
    linewidth=1.8,
    label="Embedded square side"
)

plt.axhline(
    snm,
    linestyle="--",
    linewidth=1.2,
    label=f"SNM = {snm:.3f} V"
)

plt.scatter(
    [xr[idx_left], xr[idx_right]],
    [snm_left, snm_right],
    s=40,
    zorder=5,
    label="Lobe maxima"
)

plt.xlabel("45-degree rotated coordinate (V)")
plt.ylabel("Square side (V)")

plt.title(
    "TR-10 6T SRAM Read SNM Extraction\n"
    f"SNM = {snm:.3f} V"
)

plt.grid(True)
plt.legend()

plt.tight_layout()

plt.savefig(
    "read_snm_extraction.png",
    dpi=300
)

print("saved: read_snm_extraction.png")

print("=== analysis finished ===")

plt.show()
