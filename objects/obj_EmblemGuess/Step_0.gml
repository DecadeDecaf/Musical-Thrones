Life -= 1
y += 0.15

if (Pressed) {
	y -= 0.5
	image_xscale += 0.0025
	image_yscale += 0.0025
	image_alpha -= 0.05
	Shine += 0.01
	if (image_alpha <= 0) {
		instance_destroy()
	}
} else if (Fade) {
	image_xscale -= 0.05
	image_yscale -= 0.05
	image_alpha -= 0.1
	if (image_alpha <= 0) {
		instance_destroy()
	}
} else if (Life <= 0) {
	image_xscale -= 0.05
	image_yscale -= 0.05
	image_alpha -= 0.1
	if (Correct) {
		global.Fail = true
	}
	if (image_alpha <= 0) {
		instance_destroy()
	}
}
