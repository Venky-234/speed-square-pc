extends Node

var time_taken = 0.0

var stop_stopwatch = false

func _process(delta):
	if stop_stopwatch == false:
		time_taken += delta
	
	#if stop_stopwatch == true:
		#print("stopped the watch")
	
	
