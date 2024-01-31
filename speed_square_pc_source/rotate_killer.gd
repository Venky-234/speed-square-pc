extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if rotation + (10 * delta) >= 2*PI:
		rotation = (rotation + (10 * delta)) - (2*PI)
	else:
		rotation += 10 * delta
	
	#print(rotation)


