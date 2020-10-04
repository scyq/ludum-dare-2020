extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Card_mouse_entered():
	$SfSelect.play()
	$Card.set_scale(Vector2(5.8, 5.8))


func _on_Card_mouse_exited():
	$Card.set_scale(Vector2(5.5, 5.5))
