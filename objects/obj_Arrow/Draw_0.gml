draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, -1, 1)

if (Flash > 0) {
	gpu_set_fog(true, $FFFFFF, 1, 1)
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, -1, Flash)
	gpu_set_fog(false, $000000, 1, 1)
}
