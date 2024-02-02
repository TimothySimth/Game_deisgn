extends Control



func _on_button_pressed():
	var a = int($LineEdit.text)
	var b = int($LineEdit2.text)
	var c = int($LineEdit3.text)
	var d = int($LineEdit4.text)
	if a <= 999 and b <= 999 and c <= 999 and d <= 999 and a >= 100 and b >= 100 and c >= 100 and d >= 100:
		var e = a + b + c + d
		var f = e / 4
		$sum.text = "The sum of the four numbers is: " + str(e)
		$avr.text = "The average of the four numbers is: " + str(f)
	
	else:
		if a > 999 or a < 100:
			$avr.text = "First variable is invalid"
		elif b > 999 or b < 100:
			$avr.text = "Second variable is invalid"
		elif c > 999 or c < 100:
			$avr.text = "Third variable is invalid"
		elif d > 999 or d < 100:
			$avr.text = "Fourth variable is invalid"
		elif a > 999 or a < 100 and b > 999 or b < 100:
			$avr.text = "First, Second variable are invalid"
		elif a > 999 or a < 100 and c > 999 or c < 100:
			$avr.text = "First, Third variable are invalid"
		elif c> 999 or c< 100 and b > 999 or b < 100:
			$avr.text = "Second, Third are invalid"
		elif a > 999 or a < 100 and d > 999 or d < 100:
			$avr.text = "First, Fourth variable are invalid"
		elif a > 999 or a < 100 and b < 100 or b > 999 and c < 100 or c > 999:
			$avr.text = "First, Second, Third variable are invalid"
		elif a > 999 or a < 100 and d < 100 or d > 999 and c < 100 or c > 999:
			$avr.text = "First, Third, Fourth variable are invalid"
		elif a > 999 or a < 100 and d < 100 or d > 999 and b < 100 or b > 999:
			$avr.text = "First, Second, Fourth variable are invalid"
		elif a > 999 or a < 100 and d > 999 or d < 100:
			$avr.text = "First, Third, Fourth are invalid"
		elif a > 999 or a < 100 and b > 999 or b < 100 and c > 999 or c < 100 and d > 999 or d < 100:
			$avr.text = "All variables are invalid"
		else:
			pass
func _on_button_2_pressed():
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$LineEdit3.text = ""
	$LineEdit4.text = ""
	$sum.text = ""
	$avr.text = ""

func _on_button_3_pressed():
	get_tree().quit()
