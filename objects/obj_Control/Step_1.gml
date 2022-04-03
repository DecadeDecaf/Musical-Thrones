var dt = delta_time / 1000000
Frame++

if (Playing) {
	TT += dt

	var et = 0.1875
	var sxtn = false
	var eight = false
	var quart = false
	var half = false
	var whole = false
	var double = false
	var switchsec = false

	if (TT >= Sxtnths * et) {
		Sxtnths++
		sxtn = true
		if (Sxtnths % 2 == 0) {
			Eighths++
			eight = true
			if (Eighths % 2 == 0) {
				Quarts++
				quart = true
				if (Quarts % 2 == 0) {
					Halves++
					half = true
					if (Halves % 2 == 0) {
						Wholes++
						whole = true
						if (Wholes % 2 == 0) {
							Doubles++
							if (Double) {
								Double = false
								double = true
							} else if (!Out) {
								switchsec = true
								audio_stop_all()
								Score += 1
								var seclen = array_length(Song[@ Section])
								var songlen = array_length(Song)
								if (Subsection + 1 < seclen && !global.Fail) {
									Subsection++
								} else if (Section + 1 < songlen) {
									Section++
									Subsection = 0
									if (Section == 1 && global.Fail) {
										Section++
									}
									global.Fail = false
									if (Section == 2 || Section == 4) {
										instance_create_depth(960, 480, 1, obj_Shield)
									} else {
										with (obj_Shield) {
											Fade = true
										}
									}
									with (obj_Key) {
										Fade = true
									}
									with (obj_Arrow) {
										if (!Fall) {
											Fall = true
										}
									}
									with (obj_EmblemShow) {
										Fade = true
									}
									with (obj_EmblemGuess) {
										Fade = true
									}
								}
								var subsec = Song[@ Section][@ Subsection]
								audio_play_sound(subsec, 1, false)
								Double = is_double(subsec)
								if (Section == 6) {
									alarm[0] = 420
									Out = true
								}
							}
						}
					}
				}
			}
		}
		if (Sxtnths % 4 == 0 && (Section > 0 || Subsection > 0)) {
			if (Sxtnths % 8 == 0) {
				DelayOffx -= ScrollSpeed
			} else {
				DelayOffx -= ScrollSpeed / 2
			}
		}
		if (Section == 0) {
			if (Subsection == 1) {
				if (whole && Doubles % 4 >= 2) {
					var word = pick_word(PoolA)
					FullWord = word
					spawn_letter(1)
				}
			}
		} else if (Section == 1) {
			if (Subsection == 0) {
				if (whole) {
					var word = pick_word(PoolB)
					FullWord = word
					spawn_letter(1)
				} else if (!whole && eight && Eighths % 8 == 1) {
					spawn_letter(2)
				}
			} else if (Subsection == 1) {
				if (whole) {
					var word = pick_word(PoolC)
					FullWord = word
					spawn_letter(1)
				} else if (!whole && sxtn && Sxtnths % 16 == 1) {
					spawn_letter(2)
				} else if (!whole && eight && Eighths % 8 == 1) {
					spawn_letter(3)
				}
			} else if (Subsection == 2) {
				if (whole) {
					var word = pick_word(PoolD)
					FullWord = word
					spawn_letter(1)
				} else if (!whole && sxtn && Sxtnths % 16 == 1) {
					spawn_letter(2)
				} else if (!whole && eight && Eighths % 8 == 1) {
					spawn_letter(3)
				} else if (!whole && sxtn && Sxtnths % 16 == 3) {
					spawn_letter(4)
				}
			} else if (Subsection == 3) {
				if (whole) {
					var word = pick_word(PoolE)
					FullWord = word
					spawn_letter(1)
				} else if (!whole && sxtn && Sxtnths % 16 == 1) {
					spawn_letter(2)
				} else if (!whole && eight && Eighths % 8 == 1) {
					spawn_letter(3)
				} else if (!whole && sxtn && Sxtnths % 16 == 3) {
					spawn_letter(4)
				} else if (!whole && eight && Eighths % 8 == 2) {
					spawn_letter(5)
				}
			} else if (Subsection == 4) {
				if (whole) {
					var word = pick_word(PoolF)
					FullWord = word
					spawn_letter(1)
				} else if (!whole && sxtn && Sxtnths % 16 == 1) {
					spawn_letter(2)
				} else if (!whole && eight && Eighths % 8 == 1) {
					spawn_letter(3)
				} else if (!whole && sxtn && Sxtnths % 16 == 3) {
					spawn_letter(4)
				} else if (!whole && eight && Eighths % 8 == 2) {
					spawn_letter(5)
				} else if (!whole && sxtn && Sxtnths % 16 == 5) {
					spawn_letter(6)
				}
			} else if (Subsection == 5) {
				if (Wholes % 2 == 0) {
					if (whole) {
						var word = pick_word(PoolG)
						FullWord = word
						spawn_letter(1)
					} else if (!whole && sxtn && Sxtnths % 16 == 1) {
						spawn_letter(2)
					} else if (!whole && eight && Eighths % 8 == 1) {
						spawn_letter(3)
					} else if (!whole && sxtn && Sxtnths % 16 == 3) {
						spawn_letter(4)
					} else if (!whole && sxtn && Sxtnths % 16 == 5) {
						spawn_letter(6)
					} else if (!whole && eight && Eighths % 8 == 3) {
						spawn_letter(7)
					} else if (!whole && sxtn && Sxtnths % 16 == 7) {
						spawn_letter(8)
					}
				} else {
					if (whole) {
						var word = pick_word(PoolH)
						FullWord = word
						spawn_letter(1)
					} else if (!whole && sxtn && Sxtnths % 16 == 1) {
						spawn_letter(2)
					} else if (!whole && eight && Eighths % 8 == 1) {
						spawn_letter(3)
					} else if (!whole && sxtn && Sxtnths % 16 == 5) {
						spawn_letter(5)
					} else if (!whole && eight && Eighths % 8 == 3) {
						spawn_letter(6)
					} else if (!whole && sxtn && Sxtnths % 16 == 7) {
						spawn_letter(7)
					} else if (!whole && eight && Eighths % 8 == 4) {
						spawn_letter(8)
					}
				}
			} else if (Subsection == 6) {
				if (Wholes % 2 == 0) {
					if (whole) {
						var word = pick_word(PoolI)
						FullWord = word
						spawn_letter(1)
					} else if (!whole && sxtn && Sxtnths % 16 == 1) {
						spawn_letter(2)
					} else if (!whole && eight && Eighths % 8 == 1) {
						spawn_letter(3)
					} else if (!whole && sxtn && Sxtnths % 16 == 3) {
						spawn_letter(4)
					} else if (!whole && eight && Eighths % 8 == 2) {
						spawn_letter(5)
					} else if (!whole && sxtn && Sxtnths % 16 == 5) {
						spawn_letter(6)
					} else if (!whole && eight && Eighths % 8 == 3) {
						spawn_letter(7)
					} else if (!whole && sxtn && Sxtnths % 16 == 7) {
						spawn_letter(8)
					}
				} else {
					if (whole) {
						var word = pick_word(PoolI) + " " + pick_word(PoolB)
						FullWord = word
						spawn_letter(1)
					} else if (!whole && sxtn && Sxtnths % 16 == 1) {
						spawn_letter(2)
					} else if (!whole && eight && Eighths % 8 == 1) {
						spawn_letter(3)
					} else if (!whole && sxtn && Sxtnths % 16 == 3) {
						spawn_letter(4)
					} else if (!whole && eight && Eighths % 8 == 2) {
						spawn_letter(5)
					} else if (!whole && sxtn && Sxtnths % 16 == 5) {
						spawn_letter(6)
					} else if (!whole && eight && Eighths % 8 == 3) {
						spawn_letter(7)
					} else if (!whole && sxtn && Sxtnths % 16 == 7) {
						spawn_letter(8)
					} else if (!whole && eight && Eighths % 8 == 6) {
						spawn_letter(10)
					} else if (!whole && sxtn && Sxtnths % 16 == 13) {
						spawn_letter(11)
					}
				}
			} else if (Subsection == 7) {
				if (Wholes % 2 == 0) {
					if (whole) {
						var word = pick_word(PoolI) + " " + pick_word(PoolC)
						FullWord = word
						spawn_letter(1)
					} else if (!whole && sxtn && Sxtnths % 16 == 1) {
						spawn_letter(2)
					} else if (!whole && eight && Eighths % 8 == 1) {
						spawn_letter(3)
					} else if (!whole && sxtn && Sxtnths % 16 == 3) {
						spawn_letter(4)
					} else if (!whole && eight && Eighths % 8 == 2) {
						spawn_letter(5)
					} else if (!whole && sxtn && Sxtnths % 16 == 5) {
						spawn_letter(6)
					} else if (!whole && eight && Eighths % 8 == 3) {
						spawn_letter(7)
					} else if (!whole && sxtn && Sxtnths % 16 == 7) {
						spawn_letter(8)
					} else if (!whole && eight && Eighths % 8 == 5) {
						spawn_letter(10)
					} else if (!whole && sxtn && Sxtnths % 16 == 11) {
						spawn_letter(11)
					} else if (!whole && eight && Eighths % 8 == 6) {
						spawn_letter(12)
					}
				} else {
					if (whole) {
						var word = pick_word(PoolI) + " " + pick_word(PoolD)
						FullWord = word
						spawn_letter(1)
					} else if (!whole && sxtn && Sxtnths % 16 == 1) {
						spawn_letter(2)
					} else if (!whole && eight && Eighths % 8 == 1) {
						spawn_letter(3)
					} else if (!whole && sxtn && Sxtnths % 16 == 3) {
						spawn_letter(4)
					} else if (!whole && eight && Eighths % 8 == 2) {
						spawn_letter(5)
					} else if (!whole && sxtn && Sxtnths % 16 == 5) {
						spawn_letter(6)
					} else if (!whole && eight && Eighths % 8 == 3) {
						spawn_letter(7)
					} else if (!whole && sxtn && Sxtnths % 16 == 7) {
						spawn_letter(8)
					} else if (!whole && eight && Eighths % 8 == 5) {
						spawn_letter(10)
					} else if (!whole && sxtn && Sxtnths % 16 == 11) {
						spawn_letter(11)
					} else if (!whole && eight && Eighths % 8 == 6) {
						spawn_letter(12)
					} else if (!whole && sxtn && Sxtnths % 16 == 13) {
						spawn_letter(13)
					}
				}
			} else if (Subsection == 8 || Subsection == 9) {
				if (whole) {
					var word = pick_word(PoolI) + " " + pick_word(PoolE)
					FullWord = word
					spawn_letter(1)
				} else if (!whole && sxtn && Sxtnths % 16 == 1) {
					spawn_letter(2)
				} else if (!whole && eight && Eighths % 8 == 1) {
					spawn_letter(3)
				} else if (!whole && sxtn && Sxtnths % 16 == 3) {
					spawn_letter(4)
				} else if (!whole && eight && Eighths % 8 == 2) {
					spawn_letter(5)
				} else if (!whole && sxtn && Sxtnths % 16 == 5) {
					spawn_letter(6)
				} else if (!whole && eight && Eighths % 8 == 3) {
					spawn_letter(7)
				} else if (!whole && sxtn && Sxtnths % 16 == 7) {
					spawn_letter(8)
				} else if (!whole && sxtn && Sxtnths % 16 == 9) {
					spawn_letter(10)
				} else if (!whole && eight && Eighths % 8 == 5) {
					spawn_letter(11)
				} else if (!whole && sxtn && Sxtnths % 16 == 11) {
					spawn_letter(12)
				} else if (!whole && eight && Eighths % 8 == 6) {
					spawn_letter(13)
				} else if (!whole && sxtn && Sxtnths % 16 == 13) {
					spawn_letter(14)
				}
			}
		} else if (Section == 2 || Section == 4) {
			if (Subsection == 0) {
				if (half) {
					instance_create_depth(2048, choose(360, 480, 600), 0, obj_Arrow)
				}
			} else if (Subsection == 1) {
				if (quart) {
					instance_create_depth(2048, choose(360, 480, 600), 0, obj_Arrow)
				}
			} else if (Subsection == 2) {
				if (quart || (sxtn && Sxtnths % 8 == 3)) {
					instance_create_depth(2048, choose(360, 480, 600), 0, obj_Arrow)
				}
			} else if (Subsection == 3 || Subsection == 4) {
				if (((eight && Eighths % 4 != 1) || (sxtn && Sxtnths % 8 == 3))) {
					instance_create_depth(2048, choose(360, 480, 600), 0, obj_Arrow)
				}
			}
		} else if (Section == 3 || Section == 5) {
			if (Subsection == 0) {
				if (switchsec || double) {
					gen_emblem(1, 4)
					show_emblem()
				} else if (whole) {
					ask_emblem(4)
				}
			} else if (Subsection == 1) {
				if (switchsec || double) {
					gen_emblem(2, 4)
					show_emblem()
				} else if (!whole && half && Halves % 4 == 1)  {
					show_emblem()
				} else if (whole) {
					ask_emblem(4)
				} else if (!whole && half && Halves % 4 == 3)  {
					ask_emblem(4)
				}
			} else if (Subsection == 2) {
				if (switchsec || double) {
					gen_emblem(3, 4)
					show_emblem()
				} else if (!whole && half && Halves % 4 == 1)  {
					show_emblem()
				} else if (!whole && quart && Quarts % 8 == 3)  {
					show_emblem()
				} else if (whole) {
					ask_emblem(4)
				} else if (!whole && half && Halves % 4 == 3)  {
					ask_emblem(4)
				} else if (!whole && quart && Quarts % 8 == 7)  {
					ask_emblem(4)
				}
			} else if (Subsection == 3 || Subsection == 4) {
				if (switchsec || double) {
					gen_emblem(4, 4)
					show_emblem()
				} else if (!whole && quart && Quarts % 8 == 1)  {
					show_emblem()
				} else if (!whole && half && Halves % 4 == 1)  {
					show_emblem()
				} else if (!whole && quart && Quarts % 8 == 3)  {
					show_emblem()
				} else if (whole) {
					ask_emblem(4)
				} else if (!whole && quart && Quarts % 8 == 5)  {
					ask_emblem(4)
				} else if (!whole && half && Halves % 4 == 3)  {
					ask_emblem(4)
				} else if (!whole && quart && Quarts % 8 == 7)  {
					ask_emblem(4)
				}
			}
		}
	}
} else if (!Playing && keyboard_check_pressed(vk_space) && Section == 0) {
	var dialen = array_length(Dialog)
	if (DialogPart + 1 < dialen) {
		DialogPart++
		var oldx = DelayOffx
		audio_stop_all()
		if (Dialog[@ DialogPart][@ 0] == "Ruler Tempo") {
			audio_sound_pitch(snd_Voice, random_range(1.15, 1.35))
			global.Voice = audio_play_sound(snd_Voice, 1, false)
			DelayOffx = -3840
		} else if (Dialog[@ DialogPart][@ 0] == "Player") {
			audio_sound_pitch(snd_Voice, random_range(0.8, 0.9))
			global.Voice = audio_play_sound(snd_Voice, 1, false)
			DelayOffx = PlayOffx
		}
		if (abs(oldx - DelayOffx) > 128) {
			audio_play_sound(snd_Woosh, 1, false)
		}
		if (DialogPart == 3) {
			audio_play_sound(snd_Army, 1, true)
		}
		if (DialogPart == 5) {
			audio_play_sound(snd_Sad, 1, false)
		}
		if (DialogPart == 9) {
			audio_play_sound(snd_Fanfare, 1, false)
		}
	} else {
		Playing = true
	}
} else if (!Playing && keyboard_check_pressed(vk_space)) {
	var dialen = array_length(Dialog)
	if (DialogPart + 1 < dialen) {
		DialogPart++
		var oldx = DelayOffx
		audio_stop_all()
		if (Dialog[@ DialogPart][@ 0] == "Ruler Tempo") {
			audio_sound_pitch(snd_Voice, random_range(1.15, 1.35))
			global.Voice = audio_play_sound(snd_Voice, 1, false)
			DelayOffx = -3840
		} else if (Dialog[@ DialogPart][@ 0] == "Player") {
			audio_sound_pitch(snd_Voice, random_range(0.8, 0.9))
			global.Voice = audio_play_sound(snd_Voice, 1, false)
			DelayOffx = PlayOffx
		}
		if (abs(oldx - DelayOffx) > 128) {
			audio_play_sound(snd_Woosh, 1, false)
		}
	}
}

if (!Playing) {
	if (Dialog[@ DialogPart][@ 0] == "Ruler Tempo") {
		if (global.Voice != -1 && !audio_is_playing(global.Voice)) {
			audio_sound_pitch(snd_Voice, random_range(1.15, 1.35))
			global.Voice = audio_play_sound(snd_Voice, 1, false)
		}
	} else if (Dialog[@ DialogPart][@ 0] == "Player") {
		if (global.Voice != -1 && !audio_is_playing(global.Voice)) {
			audio_sound_pitch(snd_Voice, random_range(0.8, 0.9))
			global.Voice = audio_play_sound(snd_Voice, 1, false)
		}
	}
}

if (Playing && Darken < 0.4) {
	Darken += 0.05
} else if (!Playing && Darken > 0.25) {
	Darken -= 0.05
}

var keya = keyboard_check_pressed(ord("A"))
var keyb = keyboard_check_pressed(ord("B"))
var keyc = keyboard_check_pressed(ord("C"))
var keyd = keyboard_check_pressed(ord("D"))
var keye = keyboard_check_pressed(ord("E"))
var keyf = keyboard_check_pressed(ord("F"))
var keyg = keyboard_check_pressed(ord("G"))
var keyh = keyboard_check_pressed(ord("H"))
var keyi = keyboard_check_pressed(ord("I"))
var keyj = keyboard_check_pressed(ord("J"))
var keyk = keyboard_check_pressed(ord("K"))
var keyl = keyboard_check_pressed(ord("L"))
var keym = keyboard_check_pressed(ord("M"))
var keyn = keyboard_check_pressed(ord("N"))
var keyo = keyboard_check_pressed(ord("O"))
var keyp = keyboard_check_pressed(ord("P"))
var keyq = keyboard_check_pressed(ord("Q"))
var keyr = keyboard_check_pressed(ord("R"))
var keys = keyboard_check_pressed(ord("S"))
var keyt = keyboard_check_pressed(ord("T"))
var keyu = keyboard_check_pressed(ord("U"))
var keyv = keyboard_check_pressed(ord("V"))
var keyw = keyboard_check_pressed(ord("W"))
var keyx = keyboard_check_pressed(ord("X"))
var keyy = keyboard_check_pressed(ord("Y"))
var keyz = keyboard_check_pressed(ord("Z"))

var anyk = (keya || keyb || keyc || keyd || keye || keyf || keyg || keyh || keyi || keyj || keyk || keyl || keym || keyn || keyo || keyp || keyq || keyr || keys || keyt || keyu || keyv || keyw || keyx || keyy || keyz)

if (anyk && instance_number(obj_Key) > 0) {
	var correct = false
	var prior = -1
	var unfaded = false
	with (obj_Key) {
		if (!Pressed && !Fade && Life > 0) {
			unfaded = true
		}
		if (keyboard_check_pressed(ord(Letter)) && !Pressed && !Fade && Life > 0) {
			if (prior == -1) {
				correct = true
				prior = id
			} else if (Life < prior.Life) {
				prior = id
			}
		}
	}
	if (correct) {
		prior.Pressed = true
	} else if (unfaded) {
		global.Fail = true
		with (obj_Key) {
			Fade = true
		}
	}
}

var left = keyboard_check_pressed(vk_left)
var right = keyboard_check_pressed(vk_right)

if ((left || right) && instance_number(obj_EmblemGuess) > 0) {
	var correct = false
	var prior = -1
	var unfaded = false
	with (obj_EmblemGuess) {
		if (!Pressed && !Fade && Life > 0) {
			unfaded = true
		}
		if (keyboard_check_pressed(Key) && !Pressed && !Fade && Life > 0) {
			if (prior == -1) {
				correct = true
				prior = id
			} else if (Life < prior.Life) {
				prior = id
			}
		}
	}
	if (correct) {
		prior.Pressed = true
	} else if (unfaded) {
		global.Fail = true
	}
	with (obj_EmblemGuess) {
		Fade = true
	}
}

if (Offx != DelayOffx) {
	if (Playing) {
		Offx -= (Offx - DelayOffx) / 3
	} else {
		Offx -= (Offx - DelayOffx) / 12
	}
}

if (Playing && ThroneDistance + Offx <= 0) {
	audio_stop_all()
	Playing = false
	Section = 7
	Dialog = [["Ruler Tempo", "wow, color me impressed!"], ["Ruler Tempo", "i guess it's time for me to retire"], ["Player", "cool thanks"], ["You Win", ""]]
	DialogPart = 0
	PlayOffx = -3840
	with (obj_Shield) {
		Fade = true
	}
	with (obj_Key) {
		Fade = true
	}
	with (obj_Arrow) {
		if (!Fall) {
			Fall = true
		}
	}
	with (obj_EmblemShow) {
		Fade = true
	}
	with (obj_EmblemGuess) {
		Fade = true
	}
}
