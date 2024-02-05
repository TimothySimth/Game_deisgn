extends Control




func _on_button_pressed():
	var spdlim = int($LineEdit.text)
	var carspd = int($LineEdit2.text)
	var under = spdlim - 10
	if carspd > spdlim:
		var milesover = carspd - spdlim 
		var fine = 20.0 + (milesover * 5.0) 
		$Label3.text = "Fine: $ %.2f" % fine
	elif carspd <= under:
		$Label3.text = "Speed Up"
	else:
		$Label3.text = "Not over speed limit"

func _on_button_2_pressed():
	$Label3.text = ""
	$LineEdit.text = ""
	$LineEdit2.text = ""
	
	

func _on_button_3_pressed():
	get_tree().quit()
