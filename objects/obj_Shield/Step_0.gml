var up = keyboard_check_pressed(vk_up)
var down = keyboard_check_pressed(vk_down)

if (up) {
	Row -= 1
	if (Row == 0) {
		Row = 3
	}
} else if (down) {
	Row += 1
	if (Row == 4) {
		Row = 1
	}
}

var yt = y

if (Row == 1) {
	yt = 360
} else if (Row == 2) {
	yt = 480
} else if (Row == 3) {
	yt = 600
}

y -= (y - yt) / 4

if (Flash > 0) {
	Flash -= 0.1
}

if (Fade) {
	image_xscale -= 0.025
	image_yscale -= 0.025
	image_alpha -= 0.1
	if (image_alpha <= 0) {
		instance_destroy()
	}
}
