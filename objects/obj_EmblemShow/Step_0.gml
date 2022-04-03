Life -= 1
y -= 0.1

if (image_xscale > 0.9) {
	image_xscale -= 0.01
	image_yscale -= 0.01
}

if (Life <= 0) {
	Fade = true
}

if (Fade) {
	image_xscale -= 0.05
	image_yscale -= 0.05
	image_alpha -= 0.1
	if (image_alpha <= 0) {
		instance_destroy()
	}
}
