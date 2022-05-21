extends Node

var cookies = 0
var cookiesPerSecond = 0
var cookiePerClick = 1

var shop1 = 0
var shop2 = 0
var shop3 = 0
var shop4 = 0
var shop5 = 0
var shop6 = 0
var shop7 = 0

var shop1_2 = 0
var shop2_2 = 0
var shop3_2 = 0
var shop4_2 = 0
var shop5_2 = 0
var shop6_2 = 0
	

func _ready():
	cookies = Save.loadValue("Main", "Cookies", 0)
	cookiesPerSecond = Save.loadValue("Main", "CookiesPerSecond", 0)
	cookiePerClick = Save.loadValue("Main", "cookiePerClick", 1)
	shop1 = Save.loadValue("Shops", "Shop1", 0)
	shop2 = Save.loadValue("Shops", "Shop2", 0)
	shop3 = Save.loadValue("Shops", "Shop3", 0)
	shop4 = Save.loadValue("Shops", "Shop4", 0)
	shop5 = Save.loadValue("Shops", "Shop5", 0)
	shop6 = Save.loadValue("Shops", "Shop6", 0)
	shop7 = Save.loadValue("Shops", "Shop7", 0)
	
	shop1_2 = Save.loadValue("Shops2", "Shop1_2", 0)
	shop2_2 = Save.loadValue("Shops2", "Shop2_2", 0)
	shop3_2 = Save.loadValue("Shops2", "Shop3_2", 0)
	shop4_2 = Save.loadValue("Shops2", "Shop4_2", 0)
	shop5_2 = Save.loadValue("Shops2", "Shop5_2", 0)
	shop6_2 = Save.loadValue("Shops2", "Shop6_2", 0)
