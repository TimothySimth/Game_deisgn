extends Control

var score = 0

func addpoint(): score += 1
func subpoint(): score -= 1
func reset():    score = 0
func update():
	$Label2.text = "Score: %d" % score
	

func _on_button_pressed():
	var choice = $LineEdit.text.to_lower()
	if "add" in choice:
		addpoint()
	elif "sub" in choice:
		subpoint()
	else:
		OS.alert("Invalid choice!")
	update()


func _on_button_2_pressed():
	reset()
	update()
	$LineEdit.text = ""


func _on_button_3_pressed():
	get_tree().quit()
