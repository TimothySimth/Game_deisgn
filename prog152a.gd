extends Control
func _on_button_pressed():
	var mysum = 0
	var lcv = 3
	while lcv <= 9669:
		mysum += lcv
		$ItemList.add_item(str(mysum))
		lcv += 3
	
func _on_button_2_pressed():
	$ItemList.clear()
func _on_button_3_pressed():
	get_tree().quit()
