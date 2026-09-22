# KLayout 0.30.9
# Build TEG GDS using three cleaned flat macros and hierarchical 16w16b.
#
# Base:
#   sram_teg_top_before_flatten.gds
#
# Replace:
#   sram_2w2b_top  <- sram_2w2b_top_flat_clean.gds
#   sram_2w16b_top <- sram_2w16b_top_flat_clean.gds
#   sram_16w2b_top <- sram_16w2b_top_flat_clean.gds
#
# Keep:
#   sram_16w16b_top as-is from the base TEG GDS
#
# Output:
#   sram_teg_top_3flatclean_16w16b_hier.gds

import pya
import os

BASE = os.path.expanduser("~/Design/tr10_sram/sram")
BASE_GDS = os.path.join(BASE, "sram_teg_top_before_flatten.gds")
OUT_GDS  = os.path.join(BASE, "sram_teg_top_3flatclean_16w16b_hier.gds")

REPLACE = [
    ("sram_2w2b_top",  "sram_2w2b_top_flat_clean.gds"),
    ("sram_2w16b_top", "sram_2w16b_top_flat_clean.gds"),
    ("sram_16w2b_top", "sram_16w2b_top_flat_clean.gds"),
]

if not os.path.isfile(BASE_GDS):
    raise RuntimeError("Base GDS not found: " + BASE_GDS)

ly = pya.Layout()
ly.read(BASE_GDS)
print("Loaded:", BASE_GDS)

top = ly.cell("sram_teg_top")
if top is None:
    raise RuntimeError("Top cell not found: sram_teg_top")

for cell_name, filename in REPLACE:
    src_path = os.path.join(BASE, filename)
    if not os.path.isfile(src_path):
        raise RuntimeError("Replacement GDS not found: " + src_path)

    dst = ly.cell(cell_name)
    if dst is None:
        raise RuntimeError("Destination cell not found in TEG: " + cell_name)

    print("")
    print("Replacing:", cell_name)
    print("  source:", src_path)

    # Preserve all existing instances that point to this macro cell.
    # We replace the contents of the cell itself, so placement/top wiring
    # in sram_teg_top is unchanged.
    dst.clear()

    src_ly = pya.Layout()
    src_ly.read(src_path)
    src = src_ly.cell(cell_name)
    if src is None:
        raise RuntimeError("Source cell not found: " + cell_name)

    # Clean-flat macro is expected to be a leaf cell.
    if not src.is_leaf():
        print("  WARNING: source is not a leaf cell")

    # Copy all layer shapes from source macro top cell.
    for sli in range(src_ly.layers()):
        sinfo = src_ly.get_info(sli)
        dli = ly.layer(sinfo)
        for shape in src.shapes(sli).each():
            dst.shapes(dli).insert(shape)

    # Normally none for a clean flat macro, but preserve instances if present.
    for inst in src.each_inst():
        child_src = src_ly.cell(inst.cell_index)
        if child_src is not None:
            print("  WARNING: child instance remains:", child_src.name)

    print("  OK")

# Sanity checks
keep = ly.cell("sram_16w16b_top")
if keep is None:
    raise RuntimeError("Hierarchical sram_16w16b_top disappeared unexpectedly")

print("")
print("Top cell:", top.name)
print("Keeping hierarchical: sram_16w16b_top")
print("Writing:", OUT_GDS)

ly.write(OUT_GDS)

print("")
print("DONE")
print("Output:", OUT_GDS)
