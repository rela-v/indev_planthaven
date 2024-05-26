extends CharacterBody2D

@export var Speed = 100

@onready var _animation_player = $AnimatedSprite2D

func get_input():
	if Input.is_action_pressed("ui_right"):
		velocity.x = Speed
		velocity.y = 0
		_animation_player.play("right")

	elif Input.is_action_pressed("ui_left"):
		velocity.x = -Speed
		velocity.y = 0
		_animation_player.play("left")

	elif Input.is_action_pressed("ui_down"):
		velocity.y = Speed
		velocity.x = 0
		_animation_player.play("down")

	elif Input.is_action_pressed("ui_up"):
		velocity.y = -Speed
		velocity.x = 0
		_animation_player.play("up")

	else:
		velocity.x = 0
		velocity.y = 0
		_animation_player.stop()

func _physics_process(_delta):
	get_input()
	move_and_slide()
