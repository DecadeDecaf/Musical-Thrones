if (point_distance(x, y, mouse_x, mouse_y) < 40) {
	if (image_xscale < 0.45) {
		image_xscale += 0.01
		image_yscale += 0.01
	}
	if (mouse_check_button_pressed(mb_left)) {
		if (image_index == 0) {
			game_end()
		} else if (image_index == 1) {
			var full = !window_get_fullscreen()
			window_set_fullscreen(full)
			if (full) {
				window_set_size(1920, 1080)
			} else {
				window_set_size(960, 540)
			}
			display_reset(4, true)
		} else if (image_index == 2) {
			global.Mute = true
			image_index = 3
			audio_master_gain(0)
		} else if (image_index == 3) {
			global.Mute = false
			image_index = 2
			audio_master_gain(0.75)
		}
	}
} else {
	if (image_xscale > 0.4) {
		image_xscale -= 0.01
		image_yscale -= 0.01
	}
}