extends CharacterBody2D


const SPEED = 300.0
 
var random_dir_x = 0
var random_dir_y = 0

func _ready():
	random_ball_direction()
	
func random_ball_direction():
	randomize()
	
	random_direction_x()
	random_direction_y()

	
	
	
func random_direction_x():
	while random_dir_x == 0:
		random_dir_x =  randi_range(-1,1)
	
	velocity.x = random_dir_x * SPEED

func random_direction_y():
	while random_dir_y == 0:
		random_dir_y =  randi_range(-1,1)
	
	velocity.y = random_dir_y * SPEED

func _physics_process(delta):
	move_and_slide()


func _on_area_2d_area_entered(area):	
		pass
	#	print(area.name)
	#	print(get_slide_collision_count())
	#	print(area.velocity)
		
