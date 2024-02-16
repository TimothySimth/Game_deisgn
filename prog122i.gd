extends Control




func _on_button_pressed():
	$ItemList.add_item("Num Cuberoot cube")
	for i in range(-25, 26):
		var cuberoot = (1/3)**i
		var cube = i**3
		var line = str(i) + "     " + str(cuberoot) + "          " + str(cube)
		$ItemList.add_item(line)

func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
