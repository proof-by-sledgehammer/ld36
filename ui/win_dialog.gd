extends Control

func _on_Home_pressed():
	var _res = get_tree().change_scene("res://screens/level_selection_screen.tscn")


func _on_Retry_pressed():
	var _res = get_tree().change_scene("res://screens/ingame_screen.tscn")


func _on_Next_pressed():
	State.selected_level += 1
	var _res = get_tree().change_scene("res://screens/ingame_screen.tscn")
