extends Control




func _on_button_2_pressed():
	var copies = int($LineEdit.text)
	var price = 0.0
	if 0 < copies and copies <= 100:
		price = 0.30
	elif 100 < copies and copies <= 499:
		price = 0.28
	elif 499 < copies and copies<= 749:
		price = 0.27
	elif 749 < copies and copies <= 1000:
		price = 0.26
	elif 1000 < copies:
		price = 0.25
	else:
		$Label.text = "Invalid # of copies"
	var cost = price * copies
	$Label.text =  "Price per copy: $" + str(price) + \
					"\nTotal cost: $%.2f" % cost


func _on_button_pressed():
	$Label.text = ""
	$LineEdit.text = ""


func _on_button_3_pressed():
	get_tree().quit()
