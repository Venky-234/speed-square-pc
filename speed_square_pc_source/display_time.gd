extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	#text = GameState.time_taken
	text = "%.2f" % GameState.time_taken

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
