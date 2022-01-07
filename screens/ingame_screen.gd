extends Node2D

func load_selected_level() -> void:
	var Level = load("res://levels/level_%s.tscn" % State.selected_level)
	var level = Level.instance()
	add_child(level)
	
func _ready() -> void:
	load_selected_level()
