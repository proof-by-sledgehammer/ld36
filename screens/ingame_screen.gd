extends Node2D

export(NodePath) var level_anchor

func load_selected_level() -> void:
	var Level = load("res://levels/level_%s.tscn" % State.selected_level)
	var level = Level.instance()
	add_child_below_node(get_node(level_anchor), level)

func pause_physics() -> void:
	$Cart.mode = RigidBody2D.MODE_STATIC

func unpause_physics() -> void:
	$Cart.mode = RigidBody2D.MODE_RIGID


func _ready() -> void:
	load_selected_level()
	pause_physics()


func _on_Upgrade_Dialog_on_start():
	unpause_physics()
