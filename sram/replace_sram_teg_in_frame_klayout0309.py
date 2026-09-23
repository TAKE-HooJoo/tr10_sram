import pya
import os
import sys

BASE = os.path.expanduser("~/Design/tr10_sram/sram")
FRAME_GDS = os.path.join(BASE, "tr_1um_TAKE-HooJoo.gds")
SRAM_GDS = os.path.join(BASE, "sram_teg_top_1000.gds")
OUT_GDS = os.path.join(BASE, "tr_1um_TAKE-HooJoo_SRAM_UPDATED.gds")
TARGET_CELL = "sram_teg_top"

def die(msg):
    print("ERROR:", msg)
    sys.exit(1)

if not os.path.isfile(FRAME_GDS):
    die("Frame GDS not found: " + FRAME_GDS)
if not os.path.isfile(SRAM_GDS):
    die("SRAM GDS not found: " + SRAM_GDS)

frame = pya.Layout()
frame.read(FRAME_GDS)
print("Loaded frame:", FRAME_GDS)
print("Frame DBU:", frame.dbu)

target = frame.cell(TARGET_CELL)
if target is None:
    die("Cell '%s' not found in frame GDS" % TARGET_CELL)
target_index = target.cell_index()

ref_count = 0
for c in frame.each_cell():
    for inst in c.each_inst():
        if inst.cell_index == target_index:
            ref_count += 1

print("Target cell:", TARGET_CELL)
print("Target cell index:", target_index)
print("References before replacement:", ref_count)

src = pya.Layout()
src.read(SRAM_GDS)
print("Loaded SRAM:", SRAM_GDS)
print("SRAM DBU:", src.dbu)

src_top = src.cell(TARGET_CELL)
if src_top is None:
    tops = list(src.top_cells())
    if len(tops) != 1:
        die("Replacement GDS has no '%s' cell and does not have exactly one top cell" % TARGET_CELL)
    src_top = tops[0]
    print("Using replacement top cell:", src_top.name)
else:
    print("Replacement top cell:", src_top.name)

if abs(frame.dbu - src.dbu) > 1e-12:
    die("DBU mismatch: frame=%s SRAM=%s" % (frame.dbu, src.dbu))
print("DBU check: OK")

# Keep the existing cell object/index so the placement in the frame is retained.
target.clear()
target.copy_tree(src_top)
if target.name != TARGET_CELL:
    target.name = TARGET_CELL

ref_count_after = 0
for c in frame.each_cell():
    for inst in c.each_inst():
        if inst.cell_index == target_index:
            ref_count_after += 1

print("References after replacement:", ref_count_after)
if ref_count_after != ref_count:
    die("Reference count changed: %d -> %d" % (ref_count, ref_count_after))

print("Writing:", OUT_GDS)
frame.write(OUT_GDS)

print("")
print("DONE")
print("Output:", OUT_GDS)
print("Original frame was NOT modified.")
print("Check placement -> DRC -> LVS.")
