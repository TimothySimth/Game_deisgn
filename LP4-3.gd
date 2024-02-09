extends Control




func _on_button_pressed():
	var eggs = int($LineEdit.text)
	var dozens = floor(eggs / 12)
	var remeggs = eggs % 12
	var price = 0
	if dozens < 4 and dozens > 0:
		price = 0.50
	elif dozens < 6 and dozens >= 4:
		price = 0.45
	elif dozens < 11 and dozens >= 66:
		price = 0.40
	elif dozens >= 11:
		price = 0.35
	else:
		$Label3.text = "Invated # of eggs"
	
	var half_price = price / 12
	var egg_price = dozens * price
	var remeggs_price = half_price * remeggs
	var total_price = remeggs_price + egg_price
	$Label3.text = str(total_price)
	
	
	


func _on_button_2_pressed():
	$Label3.text = ""
	$LineEdit.text = ""


func _on_button_3_pressed():
	get_tree().quit()
