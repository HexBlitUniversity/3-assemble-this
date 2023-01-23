extends Node2D

var _ball_dir

@onready var ball = $ball
@onready var score = $Score
@onready var score_end = $Panel/score_end
@onready var panel = $Panel
@onready var paddle = $Paddle
# Called when the node enters the scene tree for the first time.
func _ready():
	panel.visible = false
	score.text = "Score: %s" % ball.score
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	score.text = "Score: %s" % ball.score
	score_end.text = "Score: %s" % ball.score
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


func _on_left_wall_area_entered(area):
	print("hit left wall")
	if area.is_in_group("ball"):
		print(ball.velocity)
		ball.velocity.x *= -1


func _on_right_wall_area_entered(area):
	print("hit right wall")
	if area.is_in_group("ball"):
		ball.velocity.x *= -1


func _on_top_wall_area_entered(area):
	print("hit top wall")
	if area.is_in_group("ball"):
		ball.velocity.y *= -1


func _on_death_wall_area_entered(area):
	print("entered death wall")
	paddle.dead = true
	panel.visible = true	
	
