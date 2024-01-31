extends Node2D


# Called when the node enters the scene tree for the first time.
var tree
var speed
func _ready():
	tree = get_tree() # Replace with function body.
	speed = 12

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if self.position.x <= -19 or self.position.x >= 10:
		speed *= -1
		
	self.position.x += speed*delta

