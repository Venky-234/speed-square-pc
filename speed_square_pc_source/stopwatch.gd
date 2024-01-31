extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
var seconds = 0.0
var len = 8

var init_delta_taken = false

func _process(delta):
	
	text = "%.2f" % GameState.time_taken

