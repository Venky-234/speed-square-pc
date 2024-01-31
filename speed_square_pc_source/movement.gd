extends RigidBody2D


# Called when the node enters the scene tree for the first time.
var tree
var player_skin
var initial_pos : Vector2
func _ready():
	tree = get_tree()
	player_skin = $player_skin
	initial_pos = position

var is_lost = false
var speed : int = 100
var speed_limit = 6.5
var grav_scale = 1
var fly_down = false
func _physics_process(delta):
	if is_lost == false:
		if Input.is_key_pressed(KEY_A) or Input.is_key_pressed(KEY_LEFT):
			if linear_velocity.x >= -speed * speed_limit:
				apply_central_impulse(Vector2(-speed,0)) 
			
			
		if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_RIGHT):
			if linear_velocity.x <= speed * speed_limit:
				apply_central_impulse(Vector2(speed,0))

		if Input.is_key_pressed(KEY_SPACE) or Input.is_key_pressed(KEY_UP):
			if fly_down == false:
				if linear_velocity.y > -speed * speed_limit:
					apply_central_impulse(Vector2(0,-speed))
			if fly_down == true:
				if linear_velocity.y < speed * speed_limit:
					apply_central_impulse(Vector2(0,speed))
	

		#self.rotation
		

		
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_lost == true:	
		if(player_skin.modulate.a8 > 0):
			$player_skin.modulate.a8 -= 15
			#await tree.create_timer(0.1).timeout
		else:
			
			
			await tree.create_timer(0.2).timeout
			
			
			position = initial_pos
		
			$player_skin.modulate.a8 = 255
			self.linear_velocity.y = 0
			self.linear_velocity.x = 0
			gravity_scale = 1
			
			
			
			
			is_lost = false

func _on_area_2d_area_entered(area):
	if area.is_in_group("killer_group"):
		is_lost = true
	
	if area.get_name() == "next_level_check1" and is_lost == false:
		initial_pos = Vector2(1560,-435)
		
	if area.get_name() == "next_level_check2" and is_lost == false:
		initial_pos = Vector2(100,-1313)
		
	if area.get_name() == "next_level_check3" and is_lost == false:
		initial_pos = Vector2(1668,-1629)
		
	if area.get_name() == "anti_grav_zone":
		gravity_scale = -1
		fly_down = true
	if area.get_name() == "finished" and is_lost == false:
		GameState.stop_stopwatch = true
		Transition.change_scene("res://game_over.tscn")
	#print(area.get_name())
		


func _on_area_2d_area_exited(area):
	if area.get_name() == "anti_grav_zone":
		gravity_scale = 1
		fly_down = false
	#if area.is_in_group("killer_group"):
	#	is_lost = false
