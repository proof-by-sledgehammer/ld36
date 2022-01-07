extends Control

var LevelSelectionButton = preload("res://ui/level_selection_button.gd")

func _ready() -> void:
	for i in range(0, 15):
		var lvl = i + 1
		var button = LevelSelectionButton.new(lvl)
		$Buttons.add_child(button)


func _on_Back_pressed():
	var _res = get_tree().change_scene("res://screens/main_menu_screen.tscn")
