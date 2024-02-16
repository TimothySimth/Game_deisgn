extends Control




func _on_button_pressed():
	for i in range(2, 11, 2):
		var line1 = i
		var line2 = i + 1
		var line3 = i * 2
		var line4 = i * i
		var line5 = str(line1) + " " + str(line2) + " " + str(line3) + " " + str(line4)
		$ItemList.add_item(line5)

func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
