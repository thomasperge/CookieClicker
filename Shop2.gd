extends Node2D

func _ready():
	$Scroll/Box/TextureButton/Label_Lvl.text = "LEVEL: " + str(Global.shop1_2)
	$Scroll/Box/TextureButton/Label_Price.text = "PRICE: " + str(((Global.shop1_2 + 1) * 4) * 2.5)
	$Scroll/Box/TextureButton2/Label_Lvl.text = "LEVEL: " + str(Global.shop2_2)
	$Scroll/Box/TextureButton2/Label_Price.text = "PRICE: " + str(((Global.shop2_2 + 1) * 6) * 16.5)
	$Scroll/Box/TextureButton3/Label_Lvl.text = "LEVEL: " + str(Global.shop3_2)
	$Scroll/Box/TextureButton3/Label_Price.text = "PRICE: " + str(((Global.shop3_2 + 1) * 19) * 31.5)
	$Scroll/Box/TextureButton4/Label_Lvl.text = "LEVEL: " + str(Global.shop4_2)
	$Scroll/Box/TextureButton4/Label_Price.text = "PRICE: " + str(((Global.shop4_2 + 1) * 45) * 58)
	$Scroll/Box/TextureButton5/Label_Lvl.text = "LEVEL: " + str(Global.shop5_2)
	$Scroll/Box/TextureButton5/Label_Price.text = "PRICE: " + str(((Global.shop5_2 + 1) * 95) * 125)
	$Scroll/Box/TextureButton6/Label_Lvl.text = "LEVEL: " + str(Global.shop6_2)
	$Scroll/Box/TextureButton6/Label_Price.text = "PRICE: " + str(((Global.shop6_2 + 1) * 195) * 453)

# ==== SHOP 1 =====
func _on_TextureButton_pressed():
	if Global.cookies >= ((Global.shop1_2 + 1) * 4) * 2.5:
		Global.cookies -= ((Global.shop1_2 + 1) * 4) * 2.5
		Global.shop1_2 += 1
		Global.cookiePerClick += 0.5
		Save.saveValue("Main", "cookiePerClick", Global.cookiePerClick)
		Save.saveValue("Shops2", "Shop1_2", Global.shop1_2)
		_ready()
	else:
		print('pas assez dargent pour: shop1')
		pass
		
# ==== SHOP 2 =====
func _on_TextureButton2_pressed():
	if Global.cookies >= ((Global.shop2_2 + 1) * 6) * 16.5:
		Global.cookies -= ((Global.shop2_2 + 1) * 6) * 16.5
		Global.shop2_2 += 1
		Global.cookiePerClick += 2
		Save.saveValue("Main", "cookiePerClick", Global.cookiePerClick)
		Save.saveValue("Shops2", "Shop2_2", Global.shop2_2)
		_ready()
	else:
		print('pas assez dargent pour: shop2')
		pass

# ==== SHOP 3 =====
func _on_TextureButton3_pressed():
	if Global.cookies >= ((Global.shop3_2 + 1) * 19) * 31.5:
		Global.cookies -= ((Global.shop3_2 + 1) * 19) * 31.5
		Global.shop3_2 += 1
		Global.cookiePerClick += 5
		Save.saveValue("Main", "cookiePerClick", Global.cookiePerClick)
		Save.saveValue("Shops2", "Shop3_2", Global.shop3_2)
		_ready()
	else:
		print('pas assez dargent pour: shop3')
		pass

# ==== SHOP 4 =====
func _on_TextureButton4_pressed():
	if Global.cookies >= ((Global.shop4_2 + 1) * 45) * 58:
		Global.cookies -= ((Global.shop4_2 + 1) * 45) * 58
		Global.shop4_2 += 1
		Global.cookiePerClick += 13
		Save.saveValue("Main", "cookiePerClick", Global.cookiePerClick)
		Save.saveValue("Shops2", "Shop4_2", Global.shop4_2)
		_ready()
	else:
		print('pas assez dargent pour: shop4')
		pass

# ==== SHOP 5 =====
func _on_TextureButton5_pressed():
	if Global.cookies >= ((Global.shop5_2 + 1) * 95) * 125:
		Global.cookies -= ((Global.shop5_2 + 1) * 95) * 125
		Global.shop5_2 += 1
		Global.cookiePerClick += 45
		Save.saveValue("Main", "cookiePerClick", Global.cookiePerClick)
		Save.saveValue("Shops2", "Shop5_2", Global.shop5_2)
		_ready()
	else:
		print('pas assez dargent pour: shop5')
		pass

# ==== SHOP 6 =====
func _on_TextureButton6_pressed():
	if Global.cookies >= ((Global.shop6_2 + 1) * 195) * 453:
		Global.cookies -= ((Global.shop6_2 + 1) * 195) * 453
		Global.shop6_2 += 1
		Global.cookiePerClick += 125
		Save.saveValue("Main", "cookiePerClick", Global.cookiePerClick)
		Save.saveValue("Shops2", "Shop6_2", Global.shop6_2)
		_ready()
	else:
		print('pas assez dargent pour: shop6')
		pass
