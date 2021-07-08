extends RigidBody
export var jump_speed = 5
export var speed = 50
var movement = Vector3()
var jump = 0

func _integrate_forces(state):
	movement = Vector3(0,0,0)
	
	if Input.is_action_pressed("ui_left"):
		movement.x = -1
	if Input.is_action_pressed("ui_right"):
		movement.x = 1
	if Input.is_action_pressed("ui_down"):
		movement.z = 1
	if Input.is_action_pressed("ui_up"):
		movement.z = -1
	if Input.is_action_pressed("ui_jump"):
		jump = 1
		
	set_axis_velocity(Vector3(0,jump*jump_speed,0))
	add_force(Vector3(movement.x * speed,0,movement.z * speed),Vector3(0,0,0))
	jump=0
		
