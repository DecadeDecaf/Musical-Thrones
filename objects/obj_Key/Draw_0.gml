draw_self()
draw_set_halign(fa_center)
draw_set_valign(fa_middle)

draw_set_alpha(min(1, image_alpha * 1.6))
draw_text_transformed(x, y, Letter, image_xscale * 1.6, image_yscale * 1.6, 0)
draw_set_alpha(1)
