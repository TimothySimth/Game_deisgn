extends Control




func _on_button_pressed():
	$ItemList.add_item("Number")
	
	for nums in range(2, 36+1, 2):
		var Line = str(nums)
		$ItemList.add_item(Line)


func _on_button_2_pressed():
	$ItemList.clear()


func _on_button_3_pressed():
	get_tree().quit()
