extends Node2D

func _ready():
	$Scroll/Box/TextureButton/Label_Lvl.text = "LEVEL: " + str(Global.shop1)
	$Scroll/Box/TextureButton/Label_Price.text = "PRICE: " + str(((Global.shop1 + 1) * 4) * 7.5)
	$Scroll/Box/TextureButton2/Label_Lvl.text = "LEVEL: " + str(Global.shop2)
	$Scroll/Box/TextureButton2/Label_Price.text = "PRICE: " + str(((Global.shop2 + 1) * 9) * 25.5)
	$Scroll/Box/TextureButton3/Label_Lvl.text = "LEVEL: " + str(Global.shop3)
	$Scroll/Box/TextureButton3/Label_Price.text = "PRICE: " + str(((Global.shop3 + 1) * 25) * 45.5)
	$Scroll/Box/TextureButton4/Label_Lvl.text = "LEVEL: " + str(Global.shop4)
	$Scroll/Box/TextureButton4/Label_Price.text = "PRICE: " + str(((Global.shop4 + 1) * 38) * 75)
	$Scroll/Box/TextureButton5/Label_Lvl.text = "LEVEL: " + str(Global.shop5)
	$Scroll/Box/TextureButton5/Label_Price.text = "PRICE: " + str(((Global.shop5 + 1) * 95) * 190)
	$Scroll/Box/TextureButton6/Label_Lvl.text = "LEVEL: " + str(Global.shop6)
	$Scroll/Box/TextureButton6/Label_Price.text = "PRICE: " + str(((Global.shop6 + 1) * 215) * 510)
	$Scroll/Box/TextureButton7/Label_Lvl.text = "LEVEL: " + str(Global.shop7)
	$Scroll/Box/TextureButton7/Label_Price.text = "PRICE: " + str(((Global.shop7 + 1) * 500) * 1024)
	
# ===== SHOP 1 =====
func _on_TextureButton_pressed():
	if Global.cookies >= ((Global.shop1 + 1) * 4) * 3.5:
		Global.cookies -= ((Global.shop1 + 1) * 4) * 3.5
		Global.shop1 += 1
		Global.cookiesPerSecond += 0.1
		Save.saveValue("Main", "CookiesPerSecond", Global.cookiesPerSecond)
		Save.saveValue("Shops", "Shop1", Global.shop1)
		_ready()
	else:
		print('pas assez dargent pour: shop1')
		pass

# ===== SHOP 2 =====
func _on_TextureButton2_pressed():
	if Global.cookies >= ((Global.shop2 + 1) * 9) * 19.5:
		Global.cookies -= ((Global.shop2 + 1) * 9) * 19.5
		Global.shop2 += 1
		Global.cookiesPerSecond += 1
		Save.saveValue("Main", "CookiesPerSecond", Global.cookiesPerSecond)
		Save.saveValue("Shops", "Shop2", Global.shop2)
		_ready()
	else:
		print('pas assez dargent pour: shop2')
		pass

# ===== SHOP 3 =====
func _on_TextureButton3_pressed():
	if Global.cookies >= ((Global.shop3 + 1) * 25) * 36.5:
		Global.cookies -= ((Global.shop3 + 1) * 25) * 36.5
		Global.shop3 += 1
		Global.cookiesPerSecond += 10
		Save.saveValue("Main", "CookiesPerSecond", Global.cookiesPerSecond)
		Save.saveValue("Shops", "Shop3", Global.shop3)
		_ready()
	else:
		print('pas assez dargent pour: shop3')
		pass

# ===== SHOP 4 =====
func _on_TextureButton4_pressed():
	if Global.cookies >= ((Global.shop4 + 1) * 38) * 65:
		Global.cookies -= ((Global.shop4 + 1) * 38) * 65
		Global.shop4 += 1
		Global.cookiesPerSecond += 45
		Save.saveValue("Main", "CookiesPerSecond", Global.cookiesPerSecond)
		Save.saveValue("Shops", "Shop4", Global.shop4)
		_ready()
	else:
		print('pas assez dargent pour: shop4')
		pass

# ===== SHOP 5 =====
func _on_TextureButton5_pressed():
	if Global.cookies >= ((Global.shop5 + 1) * 95) * 150:
		Global.cookies -= ((Global.shop5 + 1) * 95) * 150
		Global.shop5 += 1
		Global.cookiesPerSecond += 100
		Save.saveValue("Main", "CookiesPerSecond", Global.cookiesPerSecond)
		Save.saveValue("Shops", "Shop5", Global.shop5)
		_ready()
	else:
		print('pas assez dargent pour: shop5')
		pass

# ===== SHOP 6 =====
func _on_TextureButton6_pressed():
	if Global.cookies >= ((Global.shop6 + 1) * 215) * 510:
		Global.cookies -= ((Global.shop6 + 1) * 215) * 510
		Global.shop6 += 1
		Global.cookiesPerSecond += 500
		Save.saveValue("Main", "CookiesPerSecond", Global.cookiesPerSecond)
		Save.saveValue("Shops", "Shop6", Global.shop6)
		_ready()
	else:
		print('pas assez dargent pour: shop6')
		pass

# ===== SHOP 7 =====
func _on_TextureButton7_pressed():
	if Global.cookies >= ((Global.shop7 + 1) * 500) * 1024:
		Global.cookies -= ((Global.shop7 + 1) * 500) * 1024
		Global.shop7 += 1
		Global.cookiesPerSecond += 1250
		Save.saveValue("Main", "CookiesPerSecond", Global.cookiesPerSecond)
		Save.saveValue("Shops", "Shop7", Global.shop7)
		_ready()
	else:
		print('pas assez dargent pour: shop7')
		pass
