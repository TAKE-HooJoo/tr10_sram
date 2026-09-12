import numpy as np
import matplotlib.pyplot as plt
from scipy.interpolate import PchipInterpolator

# ============================================================
# TR-10 6T SRAM Hold SNM Analysis
#
# Input:
#   snm_vtc.dat
#
# ngspice example:
#   wrdata snm_vtc.dat v(vin) v(vout)
#
# Current wrdata format:
#   column 2 = VIN
#   column 4 = VOUT
#
# Output:
#   snm_butterfly_square.png
#   snm_extraction.png
# ============================================================

print("=== TR-10 SRAM SNM analysis start ===")

VDD = 5.0
DATA_FILE = "snm_vtc.dat"

# ------------------------------------------------------------
# Load data
# ------------------------------------------------------------

data = np.loadtxt(DATA_FILE)

if data.shape[1] < 4:
    raise ValueError(
        "snm_vtc.dat must contain at least 4 columns "
        "(ngspice wrdata format expected)."
    )

vin = data[:, 1]
vout = data[:, 3]

print(f"data file  : {DATA_FILE}")
print(f"data shape : {data.shape}")
print(f"VIN range  : {vin.min():.3f} -> {vin.max():.3f} V")
print(f"VOUT range : {vout.min():.3f} -> {vout.max():.3f} V")

# ------------------------------------------------------------
# 45-degree coordinate transformation
#
# x' = (x - y) / sqrt(2)
# y' = (x + y) / sqrt(2)
# ------------------------------------------------------------

sqrt2 = np.sqrt(2.0)

x_rot = (vin - vout) / sqrt2
y_rot = (vin + vout) / sqrt2

# PCHIP avoids overshoot better than cubic spline
f = PchipInterpolator(x_rot, y_rot)

# Common valid range for +x and -x
x_limit = min(-x_rot.min(), x_rot.max())

x = np.linspace(
    -x_limit,
    x_limit,
    200001
)

# Original and mirrored curves in rotated coordinates
y_curve_1 = f(x)
y_curve_2 = f(-x)

# Vertical distance in rotated coordinates
distance_rot = np.abs(y_curve_1 - y_curve_2)

# Convert diagonal distance to square side
square_side = distance_rot / sqrt2

# ------------------------------------------------------------
# Find SNM for each lobe
# ------------------------------------------------------------

left_mask = x < 0
right_mask = x > 0

left_indices = np.where(left_mask)[0]
right_indices = np.where(right_mask)[0]

idx_left = left_indices[
    np.argmax(square_side[left_mask])
]

idx_right = right_indices[
    np.argmax(square_side[right_mask])
]

snm_left = square_side[idx_left]
snm_right = square_side[idx_right]

# SRAM SNM is the smaller lobe
snm = min(snm_left, snm_right)

# Use weaker lobe for square/contact visualization
if snm_left <= snm_right:
    idx_snm = idx_left
else:
    idx_snm = idx_right

xr = x[idx_snm]

yr1 = f(xr)
yr2 = f(-xr)

yr_center = (yr1 + yr2) / 2.0

# ------------------------------------------------------------
# Convert rotated square center back to original coordinates
#
# x = (y' + x') / sqrt(2)
# y = (y' - x') / sqrt(2)
# ------------------------------------------------------------

xc = (yr_center + xr) / sqrt2
yc = (yr_center - xr) / sqrt2

side = snm
half = side / 2.0

# Largest embedded square
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

p1x, p1y = inverse_rotate(xr, yr1)
p2x, p2y = inverse_rotate(xr, yr2)

# ------------------------------------------------------------
# Print result
# ------------------------------------------------------------

print()
print("========================================")
print(" TR-10 6T SRAM Hold SNM")
print("========================================")
print(f"VDD             = {VDD:.3f} V")
print(f"Left lobe SNM   = {snm_left:.6f} V")
print(f"Right lobe SNM  = {snm_right:.6f} V")
print("----------------------------------------")
print(f"Hold SNM        = {snm:.6f} V")
print(f"                = {snm * 1000:.1f} mV")
print(f"SNM / VDD       = {snm / VDD * 100:.2f} %")
print("========================================")
print()

# ============================================================
# Plot 1: Butterfly curve + largest square
# ============================================================

plt.figure(figsize=(7, 7))

plt.plot(
    vin,
    vout,
    linewidth=1.8,
    label="VTC"
)

plt.plot(
    vout,
    vin,
    linewidth=1.8,
    label="Mirrored VTC"
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
    "TR-10 6T SRAM Hold Butterfly Curve\n"
    f"SNM = {snm:.3f} V ({snm * 1000:.0f} mV)"
)

plt.xlim(0, VDD)
plt.ylim(0, VDD)

plt.axis("equal")
plt.grid(True)
plt.legend()

plt.tight_layout()

plt.savefig(
    "snm_butterfly_square.png",
    dpi=300
)

print("saved: snm_butterfly_square.png")

# ============================================================
# Plot 2: SNM extraction in rotated coordinates
# ============================================================

plt.figure(figsize=(8, 5))

plt.plot(
    x,
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
    [x[idx_left], x[idx_right]],
    [snm_left, snm_right],
    s=40,
    zorder=5,
    label="Lobe maxima"
)

plt.xlabel("45-degree rotated coordinate (V)")
plt.ylabel("Square side (V)")

plt.title(
    f"TR-10 6T SRAM Hold SNM Extraction\n"
    f"SNM = {snm:.3f} V"
)

plt.grid(True)
# plt.legend()
# plt.legend(loc="lower right")
plt.legend(
    loc="upper left",
    bbox_to_anchor=(1.02, 1.0)
)

plt.tight_layout()

plt.savefig(
    "snm_extraction.png",
    dpi=300
)

print("saved: snm_extraction.png")

print("=== analysis finished ===")

plt.show()
