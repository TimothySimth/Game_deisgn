extends Control




func _on_button_pressed():
	var j = int($LineEdit.text)
	var g = floor(j / 12)
	var t = j % 12
	var price = 0
	if g >= 0 and g < 4:
		price = 0.50
	elif g >= 4 and g < 6:
		price = 0.45
	elif g >= 6 and g < 11:
		price = 0.40
	elif g > 11:
		price = 0.35
	else:
		pass
	var fp = g * price
	var gh = t * (price / 12)
	var final_price = gh + fp
	$Label2.text = "Total Price: $" + str(final_price)


func _on_button_2_pressed():
	$Label2.text = ""
	$LineEdit.text = ""


func _on_button_3_pressed():
	get_tree().quit()
