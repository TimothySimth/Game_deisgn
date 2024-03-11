extends Control


func _ready():
	self.process_mode = Node.PROCESS_MODE_ALWAYS

func _on_button_pressed():
	hide()
	get_tree().paused = false


func _on_button_2_pressed():
	get_tree().quit()
