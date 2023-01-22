extends CharacterBody2D


const SPEED = 30000.0

var direction = Vector2.ZERO

func _unhandled_input(event):
	if event.is_action_pressed("ui_left"):
		direction.x = -1
	if event.is_action_pressed("ui_right"):
		direction.x = 1
		
	if event.is_action_released("ui_left") or event.is_action_released("ui_right"):
		direction.x = 0
		

func _physics_process(delta):
	velocity = direction * SPEED * delta 
	print(position)
	print($Sprite2D.get_rect())
	print($Sprite2D.get_rect().size)
	print($Sprite2D.get_rect().end)
	print($Sprite2D.get_rect().position)
	
	if position.x < 75:
		position.x = 75
	elif position.x > 1025:
		position.x = 1025
	move_and_slide()

 
