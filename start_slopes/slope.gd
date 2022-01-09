extends RigidBody2D

func _on_Boost_body_entered(body):
	if body.name == "Cart":
		body.apply_slope_boost()
