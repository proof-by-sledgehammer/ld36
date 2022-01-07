extends Control

var level

func init(lvl) -> void:
	if State.max_level_unlocked < lvl:
		$Main.disabled = true
	
	self.level = lvl
	$Main.text = str(lvl)

func _on_pressed() -> void:
	State.selected_level = level
	var _res = get_tree().change_scene("res://screens/ingame_screen.tscn")
