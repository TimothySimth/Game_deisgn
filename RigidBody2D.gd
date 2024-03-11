extends RigidBody2D


var dragging = false
var offset = Vector2.ZERO

func _process(delta):
	if dragging:
		$draggable.global_position = get_global_mouse_position() - offset

func _on_button_button_down():
	dragging = true
	doffset = get_global_mouse_position() - $draggable.global_position

func _on_button_button_up():
	dragging = false
