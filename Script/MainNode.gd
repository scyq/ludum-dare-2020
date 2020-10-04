extends Node2D

var card_dict = {

}
var _ace_diamonds = preload("res://Art/Cards/ace_diamonds.png")
var _ace_clubs = preload("res://Art/Cards/ace_clubs.png")
var _ace_hearts = preload("res://Art/Cards/ace_hearts.png")
var _ace_spades = preload("res://Art/Cards/ace_spades.png")
var _2_diamonds = preload("res://Art/Cards/2_diamonds.png")
var _2_clubs = preload("res://Art/Cards/2_clubs.png")
var _2_hearts = preload("res://Art/Cards/2_hearts.png")
var _2_spades = preload("res://Art/Cards/2_spades.png")
var _3_diamonds = preload("res://Art/Cards/3_diamonds.png")
var _3_clubs = preload("res://Art/Cards/3_clubs.png")
var _3_hearts = preload("res://Art/Cards/3_hearts.png")
var _3_spades = preload("res://Art/Cards/3_spades.png")
var _4_diamonds = preload("res://Art/Cards/4_diamonds.png")
var _4_clubs = preload("res://Art/Cards/4_clubs.png")
var _4_hearts = preload("res://Art/Cards/4_hearts.png")
var _4_spades = preload("res://Art/Cards/4_spades.png")
var _5_diamonds = preload("res://Art/Cards/5_diamonds.png")
var _5_clubs = preload("res://Art/Cards/5_clubs.png")
var _5_hearts = preload("res://Art/Cards/5_hearts.png")
var _5_spades = preload("res://Art/Cards/5_spades.png")
var _6_diamonds = preload("res://Art/Cards/6_diamonds.png")
var _6_clubs = preload("res://Art/Cards/6_clubs.png")
var _6_hearts = preload("res://Art/Cards/6_hearts.png")
var _6_spades = preload("res://Art/Cards/6_spades.png")
var _7_diamonds = preload("res://Art/Cards/7_diamonds.png")
var _7_clubs = preload("res://Art/Cards/7_clubs.png")
var _7_hearts = preload("res://Art/Cards/7_hearts.png")
var _7_spades = preload("res://Art/Cards/7_spades.png")
var _8_diamonds = preload("res://Art/Cards/8_diamonds.png")
var _8_clubs = preload("res://Art/Cards/8_clubs.png")
var _8_hearts = preload("res://Art/Cards/8_hearts.png")
var _8_spades = preload("res://Art/Cards/8_spades.png")
var _9_diamonds = preload("res://Art/Cards/9_diamonds.png")
var _9_clubs = preload("res://Art/Cards/9_clubs.png")
var _9_hearts = preload("res://Art/Cards/9_hearts.png")
var _9_spades = preload("res://Art/Cards/9_spades.png")
var _10_diamonds = preload("res://Art/Cards/10_diamonds.png")
var _10_clubs = preload("res://Art/Cards/10_clubs.png")
var _10_hearts = preload("res://Art/Cards/10_hearts.png")
var _10_spades = preload("res://Art/Cards/10_spades.png")
var _jack_diamonds = preload("res://Art/Cards/jack_diamonds.png")
var _jack_clubs = preload("res://Art/Cards/jack_clubs.png")
var _jack_hearts = preload("res://Art/Cards/jack_hearts.png")
var _jack_spades = preload("res://Art/Cards/jack_spades.png")
var _queen_diamonds = preload("res://Art/Cards/queen_diamonds.png")
var _queen_clubs = preload("res://Art/Cards/queen_clubs.png")
var _queen_hearts = preload("res://Art/Cards/queen_hearts.png")
var _queen_spades = preload("res://Art/Cards/queen_spades.png")
var _king_diamonds = preload("res://Art/Cards/king_diamonds.png")
var _king_clubs = preload("res://Art/Cards/king_clubs.png")
var _king_hearts = preload("res://Art/Cards/king_hearts.png")
var _king_spades = preload("res://Art/Cards/king_spades.png")
var joker_pre = preload("res://Art/Cards/joker.png")
var black_joker_pre = preload("res://Art/Cards/joker_white.png")

var card0_info = {
	"type" : null,
	"number" : null
}

var card1_info = {
	"type" : null,
	"number" : null
}

var card2_info = {
	"type" : null,
	"number" : null
}

var type_max = null
var cnt = null
var win_number = []
var rng = RandomNumberGenerator.new()

func _get_random_number_():
	# 14 black joker
	# 15 red joker
	return rng.randi_range(1, 15)
	
# joker determined by number
func _get_random_type_(_type_max):
	#	0 spades
	#	1 hearts
	#	2 clubs
	#	3 diamonds
	return rng.randi_range(0, _type_max)
	
func _change_card_(number: int, type: int, card_id: int, texture):
	if card_id == 0:
		card0_info["number"] = number
		if number > 13:
			card0_info["type"] = 4
		else:
			card0_info["type"] = type
		$CardBase0/Card.set_texture(texture)
	elif card_id == 1:
		card1_info["number"] = number
		if number > 13:
			card1_info["type"] = 4
		else:
			card1_info["type"] = type
		$CardBase1/Card.set_texture(texture)
	else:
		card2_info["number"] = number
		if number > 13:
			card2_info["type"] = 4
		else:
			card2_info["type"] = type
		$CardBase2/Card.set_texture(texture)
	

func _set_Card(number, type, card_id):
	if number == 0:
		number += 1
	var search_name = null
	var real_type = null
	if type == 0:
		real_type = "spades"
	elif type == 1:
		real_type = "hearts"
	elif type == 2:
		real_type = "clubs"
	elif type == 3:
		real_type = "diamonds"
	else:
		pass
	
	if number < 11 && number != 1:
		var temp_number = number as String
		search_name = "_" + temp_number + "_" + real_type
	elif number == 1:
		search_name = "_ace_" + real_type
	elif number == 11:
		search_name = "_jack_" + real_type
	elif number == 12:
		search_name = "_queen_" + real_type
	elif number == 13:
		search_name = "_king_" + real_type
	elif number == 14:
		search_name = "black_joker_pre"
	elif number == 15:
		search_name = "joker_pre"
	_change_card_(number, type, card_id, card_dict[search_name])

# Called when the node enters the scene tree for the first time.
func _ready():
	type_max = 0
	rng.randomize()
	cnt = 0
	card_dict["_ace_diamonds"] = _ace_diamonds
	card_dict["_ace_clubs"] = _ace_clubs
	card_dict["_ace_hearts"] = _ace_hearts
	card_dict["_ace_spades"] = _ace_spades
	card_dict["_2_diamonds"] = _2_diamonds
	card_dict["_2_clubs"] = _2_clubs
	card_dict["_2_hearts"] = _2_hearts
	card_dict["_2_spades"] = _2_spades
	card_dict["_3_diamonds"] = _3_diamonds
	card_dict["_3_clubs"] = _3_clubs
	card_dict["_3_hearts"] = _3_hearts
	card_dict["_3_spades"] = _3_spades
	card_dict["_4_diamonds"] = _4_diamonds
	card_dict["_4_clubs"] = _4_clubs
	card_dict["_4_hearts"] = _4_hearts
	card_dict["_4_spades"] = _4_spades
	card_dict["_5_diamonds"] = _5_diamonds
	card_dict["_5_clubs"] = _5_clubs
	card_dict["_5_hearts"] = _5_hearts
	card_dict["_5_spades"] = _5_spades
	card_dict["_6_diamonds"] = _6_diamonds
	card_dict["_6_clubs"] = _6_clubs
	card_dict["_6_hearts"] = _6_hearts
	card_dict["_6_spades"] = _6_spades
	card_dict["_7_diamonds"] = _7_diamonds
	card_dict["_7_clubs"] = _7_clubs
	card_dict["_7_hearts"] = _7_hearts
	card_dict["_7_spades"] = _7_spades
	card_dict["_8_diamonds"] = _8_diamonds
	card_dict["_8_clubs"] = _8_clubs
	card_dict["_8_hearts"] = _8_hearts
	card_dict["_8_spades"] = _8_spades
	card_dict["_9_diamonds"] = _9_diamonds
	card_dict["_9_clubs"] = _9_clubs
	card_dict["_9_hearts"] = _9_hearts
	card_dict["_9_spades"] = _9_spades
	card_dict["_10_diamonds"] = _10_diamonds
	card_dict["_10_clubs"] = _10_clubs
	card_dict["_10_hearts"] = _10_hearts
	card_dict["_10_spades"] = _10_spades
	card_dict["_jack_diamonds"] = _jack_diamonds
	card_dict["_jack_clubs"] = _jack_clubs
	card_dict["_jack_hearts"] = _jack_hearts
	card_dict["_jack_spades"] = _jack_spades
	card_dict["_queen_diamonds"] = _queen_diamonds
	card_dict["_queen_clubs"] = _queen_clubs
	card_dict["_queen_hearts"] = _queen_hearts
	card_dict["_queen_spades"] = _queen_spades
	card_dict["_king_diamonds"] = _king_diamonds
	card_dict["_king_clubs"] = _king_clubs
	card_dict["_king_hearts"] = _king_hearts
	card_dict["_king_spades"] = _king_spades
	card_dict["joker_pre"] = joker_pre
	card_dict["black_joker_pre"] = black_joker_pre
	_set_Card(_get_random_number_(), _get_random_type_(type_max), 0)
	_set_Card(_get_random_number_(), _get_random_type_(type_max), 1)
	_set_Card(_get_random_number_(), _get_random_type_(type_max), 2)
	
	
func _check_win():
	var number_right = false
	var type_right = false
	var c0_number = card0_info["number"]
	var c0_type = card0_info["type"]
	var c1_number = card1_info["number"]
	var c1_type = card1_info["type"]
	var c2_number = card2_info["number"]
	var c2_type = card2_info["type"]
	if c0_number == c1_number && c0_number == c2_number:
		number_right = true
	if c0_type == c1_type && c0_type == c2_type:
		type_right = true
	if number_right && type_right:
		return c0_number
	else:
		return -1
		
func _update_rank(highscore):
	var score_file = "res://scores.dat"
	var file = File.new()
	file.open(score_file, File.WRITE)
	file.store_64(highscore)
	file.close()

func _get_highest_():
	var highest = null
	var file = File.new()
	if file.file_exists("res://scores.dat"):
		file.open("res://scores.dat", File.READ)
		highest = file.get_64()
		file.close()
	return highest

func _after_press(current_num, current_type, card_id):
	$SfClick.play()
	var check_id = _check_win()
	if check_id != -1:
		if type_max < 3:
			$Counter.set_text("Still in Loop")
			type_max += 1
			_set_Card(_get_random_number_(), _get_random_type_(type_max), 0)
			_set_Card(_get_random_number_(), _get_random_type_(type_max), 1)
			_set_Card(_get_random_number_(), _get_random_type_(type_max), 2)
		else:
			$Counter.set_text("You Break the Loop")
			var temp_cnt = cnt as String
			$EndPanel/Scores.set_text("Tried Times : " + temp_cnt)
			$EndPanel.visible = true
			$Popup.play("Pop")
			var temp_high = _get_highest_()
			if temp_high == 0:
				_update_rank(cnt)
			else:
				if cnt < temp_high:
					_update_rank(cnt)
			
	else:
		cnt += 1
		var temp_cnt = cnt as String
		$Counter.set_text("Counts : " + temp_cnt)
		_set_Card((current_num + cnt - 1) % 16, (current_type + cnt - 1) % (type_max + 1), card_id)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
# warning-ignore:unused_argument
func _process(delta):
	pass
	


func _on_CardBase0_pressed():
	_after_press(card0_info["number"], card0_info["type"], 0)

func _on_CardBase1_pressed():
	_after_press(card1_info["number"], card1_info["type"], 1)

func _on_CardBase2_pressed():
	_after_press(card2_info["number"], card2_info["type"], 2)


func _on_Button_pressed():
	get_tree().change_scene("res://NodeAssets/MainMenu.tscn")
