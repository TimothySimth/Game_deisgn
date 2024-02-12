extends Control

func sayHi():
	print("HI!")
	
func getarea(length, width):
	return length * width

func getPerim(length, width):
	return 2 * length + 2 * width
	
func _on_button_pressed():
	sayHi()
	var l = int($LineEdit.text)
	var w = int($LineEdit2.text)
	var a = getarea(l, w)
	var p = getPerim(l, w)
	$Label3.text = "Area: %d\nPerimerter: %d" % [a, p]
	


func _on_button_2_pressed():
	$Label3.text = ""
	$LineEdit.text = ""
	$LineEdit2.text = ""


func _on_button_3_pressed():
	get_tree().quit()
