extends Area2D

export(float) var strength = 5.5
export(float) var jump_strength = 1100

const NEGATIVE_TORQUE = -2009

func _on_Spring_body_entered(body):
	if body.name == "Cart":
		body.apply_central_impulse(body.linear_velocity.reflect(Vector2.LEFT) * strength)
		body.apply_central_impulse(Vector2.UP * jump_strength)
		body.apply_torque_impulse(NEGATIVE_TORQUE)
