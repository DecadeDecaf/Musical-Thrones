var xx = round(Offx)

while (xx < 1920) {
	draw_sprite(spr_Background, 0, xx, 0)
	xx += 1920
}

draw_sprite(spr_Window, 0, round(Offx) - 960, 0)
draw_sprite(spr_Hallway, 0, round(Offx) + 0, 0)

if (!Playing && (DialogPart == 3 || DialogPart == 4) && Section == 0) {
	var jump = (Frame % 40 < 20 ? 0 : 1)
	draw_sprite(spr_Army, jump, round(Offx) + 0, 0)
}

if (!Playing && (DialogPart == 5 || DialogPart == 6 || DialogPart == 7) && Section == 0) {
	draw_sprite(spr_Army, 0, round(Offx) + 0, 0)
}

draw_sprite(spr_Pillars, 0, round(Offx) + 0, 0)

draw_sprite(spr_Painting, 0, round(Offx) + 960, 0)

draw_sprite(spr_Hallway, 0, round(Offx) + 1920, 0)
draw_sprite(spr_Pillars, 0, round(Offx) + 1920, 0)

//draw_sprite(spr_Window, 0, round(Offx) + 2880, 0)

draw_sprite(spr_Window, 0, round(Offx) + 3840, 0)
draw_sprite(spr_Pillars, 0, round(Offx) + 3840, 0)

draw_sprite(spr_LeaderTempo, 0, round(Offx) - ThroneDistance, 0)

draw_set_alpha(Darken)
draw_set_color($000000)
draw_rectangle(0, 0, 5760, 1080, false)

draw_set_alpha(1)
draw_set_color($FFFFFF)

draw_set_font(fnt_Font)
draw_set_halign(fa_center)
draw_set_valign(fa_top)

if (Playing && (Section == 0 || Section == 1)) {
	draw_set_alpha(0.35)
	draw_set_color($FFFFFF)
	draw_rectangle(8, 8, 452, 32, false)
	draw_set_alpha(1)
	var subsec = Subsection + 2
	if (Section == 0) {
		subsec = 1
	}
	draw_text(960, 64, "Intro (" + string(subsec) + "/12)")
	if (Section == 0 && Subsection == 0) {
		draw_text_transformed(960, 128, "get ready...", 0.7, 0.7, 0)
	} else {
		draw_text_transformed(960, 128, "type the words", 0.7, 0.7, 0)
	}
} else {
	draw_set_alpha(0.15)
	draw_set_color($FFFFFF)
	draw_rectangle(10, 10, 450, 30, false)
}

if (Section == 2) {
	draw_set_alpha(0.35)
	draw_set_color($FFFFFF)
	draw_rectangle(458, 8, 842, 32, false)
	draw_set_alpha(1)
	draw_text(960, 64, "Verse A (" + string(Subsection + 1) + "/6)")
	draw_text_transformed(960, 128, "block the arrows", 0.7, 0.7, 0)
	draw_sprite_ext(spr_Key, 1, 916, 224, 0.5, 0.5, 0, -1, 1)
	draw_sprite_ext(spr_Key, 2, 1004, 224, 0.5, 0.5, 0, -1, 1)
} else {
	draw_set_alpha(0.15)
	draw_set_color($FFFFFF)
	draw_rectangle(460, 10, 840, 30, false)
}

if (Section == 3) {
	draw_set_alpha(0.35)
	draw_set_color($FFFFFF)
	draw_rectangle(848, 8, 1152, 32, false)
	draw_set_alpha(1)
	draw_text(960, 64, "Chorus (" + string(Subsection + 1) + "/6)")
	draw_text_transformed(960, 128, "memorize the emblems", 0.7, 0.7, 0)
	if (Wholes % 2 != 0 && Subsection != 5) {
		draw_sprite_ext(spr_Key, 3, 916, 224, 0.5, 0.5, 0, -1, 1)
		draw_sprite_ext(spr_Key, 4, 1004, 224, 0.5, 0.5, 0, -1, 1)
	}
} else {
	draw_set_alpha(0.15)
	draw_set_color($FFFFFF)
	draw_rectangle(850, 10, 1150, 30, false)
}

if (Section == 4) {
	draw_set_alpha(0.35)
	draw_set_color($FFFFFF)
	draw_rectangle(1158, 8, 1542, 32, false)
	draw_set_alpha(1)
	draw_text(960, 64, "Verse B (" + string(Subsection + 1) + "/6)")
	draw_text_transformed(960, 128, "block the arrows", 0.7, 0.7, 0)
	draw_sprite_ext(spr_Key, 1, 916, 224, 0.5, 0.5, 0, -1, 1)
	draw_sprite_ext(spr_Key, 2, 1004, 224, 0.5, 0.5, 0, -1, 1)
} else {
	draw_set_alpha(0.15)
	draw_set_color($FFFFFF)
	draw_rectangle(1160, 10, 1540, 30, false)
}

if (Section == 5) {
	draw_set_alpha(0.35)
	draw_set_color($FFFFFF)
	draw_rectangle(1552, 8, 1848, 32, false)
	draw_set_alpha(1)
	draw_text(960, 64, "Finale Chorus (" + string(Subsection + 1) + "/6)")
	draw_text_transformed(960, 128, "memorize the emblems", 0.7, 0.7, 0)
	if (Wholes % 2 != 0 && Subsection != 5) {
		draw_sprite_ext(spr_Key, 3, 916, 224, 0.5, 0.5, 0, -1, 1)
		draw_sprite_ext(spr_Key, 4, 1004, 224, 0.5, 0.5, 0, -1, 1)
	}
} else {
	draw_set_alpha(0.15)
	draw_set_color($FFFFFF)
	draw_rectangle(1550, 10, 1850, 30, false)
}

if (Section == 6) {
	draw_set_alpha(0.35)
	draw_set_color($FFFFFF)
	draw_rectangle(1858, 8, 1912, 32, false)
	draw_set_alpha(1)
	draw_text(960, 64, "Outro")
	draw_text_transformed(960, 128, "reach the throne", 0.7, 0.7, 0)
} else {
	draw_set_alpha(0.15)
	draw_set_color($FFFFFF)
	draw_rectangle(1860, 10, 1910, 30, false)
}

draw_set_alpha(1)

if (!Playing) {
	draw_set_alpha(1)
	draw_text(960, 64, Dialog[@ DialogPart][@ 0])
	draw_text_transformed(960, 128, Dialog[@ DialogPart][@ 1], 0.7, 0.7, 0)
	if (DialogPart == 0) {
		draw_text_transformed(960, 176, "(press spacebar)", 0.5, 0.5, 0)
	}
}

if ((Section > 0 || Subsection > 0) || Playing) {
	var scr = max(0, Score)
	draw_text_transformed(960, 1020, "score: (" + string(scr) + "/36)", 0.5, 0.5, 0)
}


