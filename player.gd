extends CharacterBody2D

@export var Speed = 100

func get_input():
	if Input.is_action_pressed("ui_right"):
		velocity.x = Speed
		velocity.y = 0
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -Speed
		velocity.y = 0

	elif Input.is_action_pressed("ui_down"):
		velocity.y = Speed
		velocity.x = 0
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -Speed
		velocity.x = 0
	else:
		velocity.x = 0
		velocity.y = 0

func _physics_process(_delta):
	get_input()
	move_and_slide()
