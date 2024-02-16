extends Control




func _on_button_pressed():
	$ItemList.add_item("Hours Pay")
	for i in range(1, 41):
		var pay = i * 4.0
		var line = str(i) + "          " + str(pay)
		$ItemList.add_item(line)

func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
