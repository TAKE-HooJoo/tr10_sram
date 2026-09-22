import pya
import os

BASE = os.path.expanduser("~/Design/tr10_sram/sram")

MACROS = {
    "sram_2w2b_top": (
        "sram_2w2b_top.gds", "sram_2w2b_top_flat.gds",
        "sram_2w2b_top_flat_clean.gds",
        {"VDD","VSS","WLE","PCB","WE","DIN0","DIN1","A0","DOUT0","DOUT1"}),
    "sram_2w16b_top": (
        "sram_2w16b_top.gds", "sram_2w16b_top_flat.gds",
        "sram_2w16b_top_flat_clean.gds",
        {"VDD","VSS","WLE","PCB","WE","DIN0","DIN15","A0","DOUT0","DOUT15"}),
    "sram_16w2b_top": (
        "sram_16w2b_top.gds", "sram_16w2b_top_flat.gds",
        "sram_16w2b_top_flat_clean.gds",
        {"VDD","VSS","WLE","PCB","WE","DIN0","DIN1","A0","DOUT0","DOUT1"}),
}

for cell_name, (orig_fn, flat_fn, out_fn, pins) in MACROS.items():
    orig_path = os.path.join(BASE, orig_fn)
    flat_path = os.path.join(BASE, flat_fn)
    out_path = os.path.join(BASE, out_fn)

    print("\\n==", cell_name, "==")

    orig = pya.Layout()
    orig.read(orig_path)
    oc = orig.cell(cell_name)
    if oc is None:
        raise RuntimeError("Missing cell in original: " + cell_name)

    saved = []
    found = set()
    for li in range(orig.layers()):
        info = orig.get_info(li)
        for s in oc.shapes(li).each():
            if s.is_text():
                name = s.text.string
                if name in pins:
                    saved.append((info, pya.Text(s.text)))
                    found.add(name)

    print("External labels found:", sorted(found))
    missing = sorted(pins - found)
    if missing:
        print("WARNING missing labels:", missing)

    flat = pya.Layout()
    flat.read(flat_path)
    fc = flat.cell(cell_name)
    if fc is None:
        raise RuntimeError("Missing cell in flat GDS: " + cell_name)

    removed = 0
    for li in range(flat.layers()):
        doomed = [s for s in fc.shapes(li).each() if s.is_text()]
        for s in doomed:
            s.delete()
            removed += 1

    print("Removed top-cell text objects:", removed)

    for info, txt in saved:
        fc.shapes(flat.layer(info)).insert(txt)

    print("Restored external labels:", len(saved))
    flat.write(out_path)
    print("Written:", out_path)

print("\\nDONE")
