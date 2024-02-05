extends Control




func _on_button_pressed():
	$ItemList.add_item("Number     Square     Square Root")
	for nums in range(1, 51):
		var numsqre = nums**2
		var numsqrt = sqrt(nums)
		var line = str(nums) + "     " + str(numsqre) + "     " + str(numsqrt)
		$ItemList.add_item(line)


func _on_button_3_pressed():
	get_tree().quit()


func _on_button_2_pressed():
	$ItemList.clear()
