extends Control

# ========= Engine Hooks

func _ready() -> void:
	if State.savegame_exists():
		State.load_savegame()
	else:
		$Buttons/Continue.disabled = true

# ========= Event Handlers

func _on_New_Game_pressed() -> void:
	pass # Replace with function body.


func _on_Continue_pressed() -> void:
	pass # Replace with function body.


func _on_Arcade_pressed() -> void:
	pass # Replace with function body.


func _on_Exit_pressed() -> void:
	get_tree().quit()
