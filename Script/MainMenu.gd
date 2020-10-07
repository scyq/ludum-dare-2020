extends Control
var main_node = null
var score_file_path = "user://scores.dat"

# Called when the node enters the scene tree for the first time.
func _ready():
	main_node = preload("res://NodeAssets/MainNode.tscn")

func _on_StartBtn_pressed():
	get_tree().change_scene_to(main_node)


func _on_ExitBtn_pressed():
	get_tree().quit() # Replace with function body.


func _on_Rank_pressed():
	var highest = null
	var file = File.new()
	if file.file_exists(score_file_path):
		file.open(score_file_path, File.READ)
		highest = file.get_64()
		file.close()
	else:
		highest = "Error"
	highest = highest as String
	if highest == "0":
		highest = "Trapped"
	$Rank.set_text(highest)

		
	
