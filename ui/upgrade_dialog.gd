extends Control

signal on_start

func _on_Back_pressed():
	get_tree().change_scene("res://screens/level_selection_screen.tscn")


func _on_Start_pressed():
	self.visible = false
	emit_signal("on_start")
