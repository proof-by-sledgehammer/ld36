extends RigidBody2D

export(float) var initial_boost_strength = 50
export(float) var slope_boost_strength = 10
export(float) var slope_bind_strength = 10

func apply_initial_boost():
	self.apply_central_impulse(Vector2.RIGHT * initial_boost_strength)

func apply_slope_boost():
	self.apply_central_impulse(self.linear_velocity.rotated(PI / 2) * slope_bind_strength)
	self.apply_central_impulse(self.linear_velocity * slope_boost_strength)
