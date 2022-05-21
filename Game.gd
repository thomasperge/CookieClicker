extends Node2D
		
func _ready():
	$Control/LabelCookies.text = str(Global.cookies)
	$Control/LabelCookiesPerSecond.text = str(Global.cookiesPerSecond) + " /s"
	
func _physics_process(delta):
	$Control/LabelCookies.text = str(Global.cookies)
	$Control/LabelCookiesPerSecond.text = str(Global.cookiesPerSecond) + " /s"

func _on_Cookie_button_pressed():
	Global.cookies += Global.cookiePerClick
	Save.saveValue("Main", "Cookies", Global.cookies)
	var click = load("res://ClickMsg.tscn")
	var clickInstance = click.instance()
	clickInstance.position = get_local_mouse_position()
	add_child(clickInstance)

func _on_Timer_timeout():
	Global.cookies += Global.cookiesPerSecond
	$Control/LabelCookies.text = str(Global.cookies)

func _on_ShopButton_pressed():
	$Control/PopUpShop.show()

func _on_CloseButton_pressed():
	$Control/PopUpShop.hide()

func _on_ShopButton2_pressed():
	$Control/PopUpShop2.show()

func _on_CloseButton2_pressed():
	$Control/PopUpShop2.hide()

func _on_ChestButton_pressed():
	$Control/PopupChest.show()

func _on_CloseButton3_pressed():
	$Control/PopupChest.hide()

func _on_Timer2_timeout():
	$Control2/TextureProgress.value += 1

func _on_TextureProgress_value_changed(value):
	if value == 100:
		$Control2/TextureProgress.value = 0.1
