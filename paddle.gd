extends CharacterBody2D

const SPEED = 300.0

var _ball_dir

func _physics_process(delta):

 
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if position.x < 75:
		position.x = 75
	elif position.x > 1025:
		position.x = 1025
		
		
	move_and_slide()

 


func _on_area_2d_area_entered(area):
	print(area.name)
	if area.is_in_group("ball"):
		var ball = area.get_parent()
		#ball.velocity = ball.velocity.bounce(ball.velocity.normalized())
		ball.random_direction_y()
		#var ball = get_tree().root.get_node("ball")
		#print(ball)
		#ball.velocity.bounce(ball.velocity.normalized())
		
