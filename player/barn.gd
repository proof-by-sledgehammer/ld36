extends Area2D

signal on_won

func _on_Barn_body_entered(body):
	if body.name == "Cart":
		emit_signal("on_won")
