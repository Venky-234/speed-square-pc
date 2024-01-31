extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	#DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	GameState.time_taken = 0.0
# Called every frame. 'delta' is the elapsed time since the previous frame.
var pressed = false


func _process(delta):
	if Input.is_key_pressed(KEY_R):
		Transition.change_scene("res://level.tscn")
	
		

