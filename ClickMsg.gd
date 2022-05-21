extends Node2D


func _ready():
	$LabelAmout.text = "+" + str(Global.cookiePerClick)

func _physics_process(delta):
	position.y -= 4
