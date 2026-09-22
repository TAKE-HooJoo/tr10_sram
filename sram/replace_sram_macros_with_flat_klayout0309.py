import pya
import os

BASE = os.path.expanduser("~/Design/tr10_sram/sram")
TEG = os.path.join(BASE, "sram_teg_top_before_flatten.gds")
OUT = os.path.join(BASE, "sram_teg_top_flatmacro.gds")

MACROS = [
    ("sram_2w2b_top", "sram_2w2b_top_flat.gds"),
    ("sram_2w16b_top", "sram_2w16b_top_flat.gds"),
    ("sram_16w2b_top", "sram_16w2b_top_flat.gds"),
    ("sram_16w16b_top", "sram_16w16b_top_flat.gds"),
]

layout = pya.Layout()
layout.read(TEG)

top = layout.cell("sram_teg_top")
if top is None:
    raise RuntimeError("sram_teg_top not found")

print("Loaded:", TEG)

for cell_name, flat_file in MACROS:
    flat_path = os.path.join(BASE, flat_file)

    print("\nReplacing:", cell_name)
    print("  source:", flat_path)

    if not os.path.isfile(flat_path):
        raise RuntimeError("Flat GDS not found: " + flat_path)

    dst = layout.cell(cell_name)
    if dst is None:
        raise RuntimeError("Destination cell not found: " + cell_name)

    src_layout = pya.Layout()
    src_layout.read(flat_path)

    src = src_layout.cell(cell_name)
    if src is None:
        raise RuntimeError("Cell %s not found in %s" % (cell_name, flat_file))

    if not src.is_leaf():
        raise RuntimeError("%s is not fully flattened" % cell_name)

    # Replace only the contents of the existing macro cell.
    # The instance in sram_teg_top keeps its original position/orientation.
    dst.clear()

    for src_li in range(src_layout.layers()):
        info = src_layout.get_info(src_li)
        dst_li = layout.layer(info)

        for shape in src.shapes(src_li).each():
            dst.shapes(dst_li).insert(shape)

    print("  OK")

# NOTE:
# Do not call layout.prune_cells() here.
# KLayout 0.30.9 requires an explicit cell list/index argument.
# Unused cells do not affect the hierarchy rooted at sram_teg_top.

top = layout.cell("sram_teg_top")
if top is None:
    raise RuntimeError("sram_teg_top disappeared unexpectedly")

print("\nTop cell:", top.name)
print("Writing:", OUT)

layout.write(OUT)

print("\nDONE")
