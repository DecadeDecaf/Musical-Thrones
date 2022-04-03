function pick_word(array) {
	var len = array_length(array)
	var num = irandom_range(0, len - 1)
	return array[@ num]
}

function spawn_letter(num) {
	var word = FullWord
	var letter = string_char_at(word, num)
	var len = string_length(word)
	var key = instance_create_depth(960 - ((len - 1) * 44) + ((num - 1) * 88), 480, 0, obj_Key)
	key.Letter = letter
}

function show_emblem() {
	with (obj_EmblemShow) {
		Life = 0
	}
	with (obj_EmblemGuess) {
		Life = 0
	}
	var emblem = instance_create_depth(960, 480, 0, obj_EmblemShow)
	emblem.image_index = Pattern[@ Emblem]
	Emblem++
}

function gen_emblem(len, last) {
	Pattern = []
	Emblem = 0
	Ask = 0
	repeat (len) {
		array_push(Pattern, irandom_range(0, last))
	}
}

function ask_emblem(last) {
	with (obj_EmblemShow) {
		Life = 0
	}
	with (obj_EmblemGuess) {
		Life = 0
	}
	var decoy = Pattern[@ Ask] 
	while (decoy == Pattern[@ Ask]) {
		decoy = irandom_range(0, last)
	}
	var len = array_length(Pattern)
	if (choose(true, false)) {
		var emblem = instance_create_depth(880, 480, 0, obj_EmblemGuess)
		emblem.image_index = Pattern[@ Ask]
		var fake = instance_create_depth(1040, 480, 0, obj_EmblemGuess)
		fake.image_index = decoy
		fake.Correct = false
		fake.Key = vk_right
		if (Ask + 1 == len && Ask > 1) {
			emblem.Life = 25
			fake.Life = 25
		}
	} else {
		var emblem = instance_create_depth(1040, 480, 0, obj_EmblemGuess)
		emblem.image_index = Pattern[@ Ask]
		emblem.Key = vk_right
		var fake = instance_create_depth(880, 480, 0, obj_EmblemGuess)
		fake.image_index = decoy
		fake.Correct = false
		if (Ask + 1 == len && Ask > 1) {
			emblem.Life = 25
			fake.Life = 25
		}
	}
	Ask++
}
