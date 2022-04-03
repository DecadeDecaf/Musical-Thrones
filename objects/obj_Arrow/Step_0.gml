if (!Hit && !Fall) {
	x -= 10 + (2/3)
	var shield = instance_nearest(x, y, obj_Shield)
	if (place_meeting(x, y, shield)) {
		image_xscale = 0.5
		image_angle = 24
		x -= 96
		Hit = true
		Flash = 1
		shield.Flash = 0.4
	}
	if (x <= 0) {
		instance_destroy()
		global.Fail = true
		exit
	}
}

if (Flash > 0) {
	Flash -= 0.1
}

if (Hit) {
	if (image_angle > -90) {
		image_angle -= 1.75
	}
	x += lengthdir_x(12, image_angle)
	y += lengthdir_y(16, image_angle)
	if (y > 1984) {
		instance_destroy()
	}
} else if (Fall) {
	if (image_angle < 90) {
		image_angle += 1.75
	}
	x += lengthdir_x(12, image_angle + 180)
	y += lengthdir_y(16, image_angle + 180)
	if (y > 1984) {
		instance_destroy()
	}
}
