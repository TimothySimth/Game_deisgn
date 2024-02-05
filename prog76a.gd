extends Control



func _on_button_pressed():
	var hn = int($LineEdit.text) 
	if hn <= 9:
		var i_n = (hn * 9)
		var ii = 12345679 * i_n
		
		$Label9.text = str(hn)
		$Label3.text = "X   9"
		$Label5.text = str(i_n)
		$Label6.text = "X  12345679"
		$Label8.text = "Surprise!"
		$Label7.text = str(ii)
	else:
		$Label7.text = "Invalid Nummber"


func _on_button_2_pressed():
		$Label9.text = ""
		$Label3.text = ""
		$Label5.text = ""
		$Label6.text = ""
		$Label8.text = ""
		$Label7.text = ""

func _on_button_3_pressed():
	get_tree().quit()
