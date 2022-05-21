extends Node2D

var randomNumber = RandomNumberGenerator.new()

func _ready():
	randomNumber.randomize()
	print(randomNumber.randi_range(1, 200))
	

func _on_TextureButton_pressed():
	if Global.cookies <= 2000000:
		randomNumber.randomize()
		print(randomNumber.randi_range(1, 200))
