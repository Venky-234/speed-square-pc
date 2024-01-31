extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in get_children():
		i.get_node("RigidBody2D").mass = 15
		i.get_node("RigidBody2D").gravity_scale = 0
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
