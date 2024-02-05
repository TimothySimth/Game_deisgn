extends Control




func _on_button_pressed():
	var k = int($LineEdit4.text)
	var a = int($LineEdit.text)
	var b = int($LineEdit2.text)
	var c = int($LineEdit3.text)
	var g = a * b * c
	if g <= 27 and k <= 100000:
		$label2.text = "package is acsepted"
	elif g <= 27 and k > 100000:
		$label2.text = "package is too large"
	elif g > 27 and k <= 100000:
		$label2.text = "package is too heavy"
	else:
		if g > 27 and k > 100000:
			$label2.text = "Package is too large and too heavy"


func _on_button_2_pressed():
	$Label.text = ""
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$LineEdit3.text = ""
	$LineEdit4.text = ""


func _on_button_3_pressed():
	get_tree().quit()
