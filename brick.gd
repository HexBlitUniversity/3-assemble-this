extends StaticBody2D



var orange_brick = 0
var red_brick = 1
var blue_brick = 2
var grey_brick = 3
var green_brick = 4
var black_brick = 5
var pink_brick = 6

@onready var orange_brick_sprite = $orange_brick
@onready var red_brick_sprite = $red_brick
@onready var blue_brick_sprite = $blue_brick
@onready var grey_brick_sprite = $grey_brick
@onready var green_brick_sprite = $green_brick
@onready var black_brick_sprite = $black_brick
@onready var pink_brick_sprite = $pink_brick
@onready var yellow_brick_sprite = $yellow_brick
# Called when the node enters the scene tree for the first time.
func _ready():
	
	orange_brick_sprite.visible = false
	red_brick_sprite.visible = false
	blue_brick_sprite.visible = false
	grey_brick_sprite.visible = false
	green_brick_sprite.visible = false
	black_brick_sprite.visible = false
	pink_brick_sprite.visible = false
	yellow_brick_sprite.visible = false
	randomize()
	var random_brick = randi() % 7 
	match(random_brick):
		0:
			orange_brick_sprite.visible = true
		1:
			red_brick_sprite.visible = true
		2:
			blue_brick_sprite.visible = true
		3:
			grey_brick_sprite.visible = true
		4:
			green_brick_sprite.visible = true
		5:
			black_brick_sprite.visible = true
		6:
			pink_brick_sprite.visible = true
		7:
			yellow_brick_sprite.visible = true


func _on_bottom_brick_area_entered(area):
	if area.is_in_group("ball"):
		
		var ball = area.get_parent()
		ball.random_direction_y()
		ball.score += 5
		queue_free()
		#ball.velocity = ball.velocity.bounce(position.normalized())


func _on_left_brick_area_entered(area):
	if area.is_in_group("ball"):
		var ball = area.get_parent()
		ball.random_direction_x()
		ball.score += 5
		queue_free()
		#ball.velocity = ball.velocity.bounce(position.normalized())


func _on_right_brick_area_entered(area):
	if area.is_in_group("ball"):
		var ball = area.get_parent()
		ball.random_direction_x()
		ball.score += 5
		queue_free()
		#ball.velocity = ball.velocity.bounce(position.normalized())


func _on_top_brick_area_entered(area):
	if area.is_in_group("ball"):
		var ball = area.get_parent()
		#ball.velocity.y *= -1
		ball.random_direction_y()
		ball.score += 5
		queue_free()
		#ball.velocity = ball.velocity.bounce(position.normalized())
