extends RigidBody2D

export(float) var initial_boost_strength = 20

func apply_initial_boost():
	self.apply_central_impulse(Vector2.RIGHT * initial_boost_strength)
