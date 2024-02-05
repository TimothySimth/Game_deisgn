extends Control
	



func _on_btn_calc_pressed():
	var length = int($LineEdit.text)
	var width = int($LineEdit2.text)
	var area = length * width
	var pirm = 2 * length + 2 * width
	$lblarea.text = "Area: " + str(area)
	$lblperim.text = "Perimeter: " + str(pirm)


func _on_btnclear_pressed():
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$lblarea.text = ""
	$lblperim.text = ""

func _on_btnexit_pressed():
	get_tree().quit()
