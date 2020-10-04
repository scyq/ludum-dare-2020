extends Node2D


func _on_mouse_exited():
	set_scale(Vector2(1, 1))


func _on_Area2D2_mouse_entered():
	set_scale(Vector2(1.2, 1.2))
