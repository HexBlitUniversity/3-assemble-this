extends Node2D

var _ball_dir

@onready var ball = $ball

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	if area.is_in_group("ball"):
		print(ball.velocity)
		
		ball.velocity = ball.velocity.bounce(ball.velocity.normalized())
		print(ball.velocity.bounce(ball.velocity.normalized()))
		
		#ball.velocity.x *= -1
		#ball.velocity.y *= -1
		print(area.name)
		# Assign new direction.		
		#ball.direction = Vector2(ball.direction.x * -1, randf() * 2 - 1).normalized()
