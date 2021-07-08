extends Camera

var offset
onready var Ball = get_parent().get_node("RigidBody")

func _ready() :
	offset = translation - Ball.translation
	
func _physics_process(delta):
	translation = Ball.translation + offset

