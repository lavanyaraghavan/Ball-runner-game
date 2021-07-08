extends Spatial


func _on_Area_body_entered(body):
	if body.name == "RigidBody":
		print("res://Level"+str(int(get_tree().current_scene.name)+1)+".tscn")
		get_tree().change_scene("res://Level" + str(int(get_tree().current_scene.name)+1) + ".tscn")

func _on_Area1_body_entered(body):
	if body.name == "RigidBody":
		get_tree().reload_current_scene()


