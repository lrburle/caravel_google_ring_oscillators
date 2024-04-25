import pya

app = pya.Application.instance()
opt = pya.SaveLayoutOptions()
layout_view = pya.Layout()

input_layout = "/home/lburleson/OSU/google_ring_oscillator/caravel/gds/user_project_wrapper.gds"
output = "/home/lburleson/OSU/google_ring_oscillator/caravel/precheck_results/06_APR_2024___22_13_02/tmp/layout.txt"
# Setting the name of the output file and setting the substitution character
print("[INFO] Changing from " + input_layout + "\n	to " + output)
opt.set_format_from_filename(output)
opt.oasis_substitution_char=''

# Reading the input file and writing it to the output file name
layout_view.read(input_layout)
for cell_it in layout_view.each_cell():
    if cell_it.name.endswith("user_project_wrapper"):
       myIndex = layout_view.cell(cell_it.name).cell_index()
       break
opt.select_cell(myIndex)
opt.add_layer(0, pya.LayerInfo())
layout_view.write(output, opt)

app.exit(0)
