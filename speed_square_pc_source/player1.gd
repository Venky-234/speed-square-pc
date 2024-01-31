extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	remove_child(get_child(0,false))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
