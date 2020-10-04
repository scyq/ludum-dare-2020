extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
class_name CardGenerator
var rng = RandomNumberGenerator.new()
var theCard = load("theCard.gd")

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

# confirm the card
func card_generator():
	return theCard.new(1,0)

