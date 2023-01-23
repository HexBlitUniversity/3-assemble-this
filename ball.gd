extends CharacterBody2D


var SPEED = 300.0
 
var random_dir_x = 1
var random_dir_y = 1

var score = 0
var colors = [0,1,2,3,4,5,6,7]

func _ready():
	random_ball_direction()
	
func random_ball_direction():
	randomize()
	
	random_direction_x()
	random_direction_y()

func _unhandled_input(event):
	pass
		
	
	
func random_direction_x():
	#while random_dir_x == 0:
		#random_dir_x =  randi_range(-1,1)
	random_dir_x *= -1
	velocity.x = random_dir_x * SPEED

func random_direction_y():
	#while random_dir_y == 0:
		#random_dir_y =  randi_range(-1,1)
	random_dir_y *= -1
	velocity.y = random_dir_y * SPEED

func _physics_process(delta):
	
	print(velocity.y)
	if velocity.y < 300 and velocity.y > 0:
		velocity.y = 300
	elif velocity.y > -300 and velocity.y <= 0:
		velocity.y = -300
		
	if velocity.x < 300 and velocity.x > 0:
		velocity.x = 300
	elif velocity.x > -300 and velocity.x <= 0:
		velocity.x = -300
	move_and_slide()


 

