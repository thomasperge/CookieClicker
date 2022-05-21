extends Node2D
var width = 0

func _ready():
	width = $Sprite.texture.get_width()
	pass
	
func _process(delta):
	$Sprite.translate(Vector2(-500 * delta, 0))
	$Sprite2.translate(Vector2(-500 * delta, 0))
	if $Sprite.position.x <= width:
		$Sprite.position.x = width
	if $Sprite2.position.x <= width:
		$Sprite2.position.x = width
