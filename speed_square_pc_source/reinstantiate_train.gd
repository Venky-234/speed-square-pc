extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if modulate.a8 <= 0:
		#var trail_renderer = $trail_renderer
		#remove_child(get_child(0))
		$trail_renderer.free()
		var trail_renderer = load("res://trail_renderer.tscn").instantiate()
		add_child(trail_renderer)
		
