extends Control




func _on_button_pressed():
	$ItemList.add_item("Number     Square     Square Root     Cube     4th Root")
	for nums in range(1, 26):
		var numsqre = nums**2
		var numsqrt = sqrt(nums)
		var cube = nums**3
		var th = nums**(1/4)
		var line = str(nums) + "                    " + str(numsqre) + "                    " + str(numsqrt) + "                    " + str(cube) + "                    " + str(th)
		$ItemList.add_item(line)
