extends Control
var main_node = null

# Called when the node enters the scene tree for the first time.
func _ready():
	main_node = preload("res://NodeAssets/MainNode.tscn")

func _on_StartBtn_pressed_(): 
	get_tree().change_scene_to(main_node)

func _process(delta):
	if $StartBtn.pressed:
		_on_StartBtn_pressed_()
	if $ExitBtn.pressed:
		get_tree().quit()
