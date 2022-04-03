function is_double(subsec) {
	var doub = false
	switch (subsec) {
		default:
			doub = false; break
		case snd_0a:
		case snd_2a:
		case snd_3a:
		case snd_3b:
		case snd_3c:
		case snd_3d:
		case snd_3e:
		case snd_4a:
		case snd_4b:
		case snd_4c:
		case snd_4d:
		case snd_4e:
			doub = true; break
	}
	return doub
}