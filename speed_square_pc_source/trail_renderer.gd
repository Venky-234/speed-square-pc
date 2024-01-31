extends Line2D


var length = 20
var point = Vector2()


func _process(delta):
	global_position = Vector2(0,0)
	global_rotation = 0
	#point = Vector2(get_parent().linear_velocity.x, get_parent().linear_velocity.y - 10)
	point = get_parent().global_position
	add_point(point)
		
	if modulate.a8 <= 0:
		points = PackedVector2Array()

	if get_point_count()>length:
		remove_point(0)
	
