extends KinematicBody

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export var MAX_SPEED = 10.0
export var GRAVITY = -9.8

var current_velocity = Vector3()

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	
	var x_acc = 0.0
	var y_acc = 0.0	
	#var y_acc = -1.0
	var z_acc = 0.0
	
	if (Input.is_action_pressed("move_forward")):
		x_acc += 1.0
	if (Input.is_action_pressed("move_back")):
		x_acc -= 1.0
	if (Input.is_action_pressed("move_right")):
		z_acc += 1.0
	if (Input.is_action_pressed("move_left")):
		z_acc -= 1.0
		
	var total_vel = Vector3(x_acc, y_acc, z_acc)
	current_velocity += total_vel*delta
	#total_vel = total_vel*MAX_SPEED
	move_and_slide(current_velocity)
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
	pass
