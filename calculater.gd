extends Control


func myAdd(num1, num2):
	return num1 + num2
func mySub(num1, num2):
	return num1 - num2
func myMul(num1, num2):
	return num1 * num2
func myDiv(num1, num2):
	return num1 / num2
func myPow(num1, num2):
	return num1**num2
func myMod(num1, num2):
	return num1 % num2

func _on_button_pressed():
	$Label.text = "+"
	var num1 = int($LineEdit.text)
	var num2 = int($LineEdit2.text)
	var num3 = myAdd(num1, num2)
	$Label2.text = str(num3)
	print("Hi!")


func _on_button_2_pressed():
	$Label.text = "-"
	var num1 = int($LineEdit.text)
	var num2 = int($LineEdit2.text)
	var num3 = mySub(num1, num2)
	$Label2.text = str(num3)



func _on_button_3_pressed():
	$Label.text = "*"
	var num1 = int($LineEdit.text)
	var num2 = int($LineEdit2.text)
	var num3 = myMul(num1, num2)
	$Label2.text = str(num3)



func _on_button_4_pressed():
	$Label.text = "**"
	var num1 = int($LineEdit.text)
	var num2 = int($LineEdit2.text)
	var num3 = myPow(num1, num2)
	$Label2.text = str(num3)



func _on_button_5_pressed():
	$Label.text = "/"
	var num1 = int($LineEdit.text)
	var num2 = int($LineEdit2.text)
	var num3 = myDiv(num1, num2)
	$Label2.text = str(num3)



func _on_button_6_pressed():
	$Label.text = "%"
	var num1 = int($LineEdit.text)
	var num2 = int($LineEdit2.text)
	var num3 = myMod(num1, num2)
	$Label2.text = str(num3)



func _on_button_7_pressed():
	$Label2.text = ""
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$Label.text = ""


func _on_button_8_pressed():
	get_tree().quit()
