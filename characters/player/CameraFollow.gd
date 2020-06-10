extends Camera

onready var target = get_node("../headbox")
export var follow_distance = 5.0

func _ready():	
	# Called every time the node is added to the scene.
	# Initialization here
	pass

func _process(delta):
	var target_pos = target.global_transform.origin
	
	look_at(target_pos, Vector3(0,1,0))

