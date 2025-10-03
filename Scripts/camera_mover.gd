extends CharacterBody2D

var speed = 150
@onready var anim_sprite: AnimatedSprite2D = $AnimatedSprite2D

# Track last direction faced
var last_direction = "down"

@export var inv: Inv 

func _physics_process(_delta):
	var input_vector = Vector2.ZERO

	if Input.is_action_pressed("ui_right"):
		input_vector.x += 1
	if Input.is_action_pressed("ui_left"):
		input_vector.x -= 1
	if Input.is_action_pressed("ui_down"):
		input_vector.y += 1
	if Input.is_action_pressed("ui_up"):
		input_vector.y -= 1

	input_vector = input_vector.normalized()

	# Movement
	velocity = input_vector * speed
	move_and_slide()

	# --- Handle Animations ---
	if input_vector == Vector2.ZERO:
		# Idle animation based on last direction
		anim_sprite.play("idle_" + last_direction)
	else:
		# Determine direction & play walking animation
		if abs(input_vector.x) > abs(input_vector.y):
			# Horizontal movement
			if input_vector.x > 0:
				last_direction = "right"
			else:
				last_direction = "left"
		else:
			# Vertical movement
			if input_vector.y > 0:
				last_direction = "down"
			else:
				last_direction = "up"

		anim_sprite.play("walk_" + last_direction)
