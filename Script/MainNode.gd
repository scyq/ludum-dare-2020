extends Node2D

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


var rng = RandomNumberGenerator.new()

func _get_random_number_():
	# 14 black joker
	# 15 red joker
	return rng.randi_range(1, 15)
	
func _get_random_type_():
	#	0 spades
	#	1 hearts
	#	2 clubs
	#	3 diamonds
	return rng.randi_range(0, 4)


# Called when the node enters the scene tree for the first time.
func _ready():
	$CardBase0/theCard.set_texture(_ace_spades)
	$CardBase1/theCard.set_texture(_ace_spades)
	$CardBase2/theCard.set_texture(_ace_spades)
	
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D2_mouse_entered():
	$CardBase0/theCard.set_scale(Vector2(6, 6))
	pass # Replace with function body.


func _on_Area2D2_mouse_exited():
	$CardBase0/theCard.set_scale(Vector2(5.5, 5.5))
	pass # Replace with function body.
