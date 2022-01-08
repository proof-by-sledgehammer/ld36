extends Node2D

export(NodePath) var level_anchor

var level = null

func load_selected_level() -> void:
	var Level = load("res://levels/level_%s.tscn" % State.selected_level)
	level = Level.instance()
	level.connect("on_level_shown", self, "_on_level_shown")
	add_child_below_node(get_node(level_anchor), level)

func pause_physics() -> void:
	$Cart.mode = RigidBody2D.MODE_STATIC

func unpause_physics() -> void:
	$Cart.mode = RigidBody2D.MODE_RIGID

func show_level() -> void:
	level.show_level()

func _on_level_shown() -> void:
	$Cart/Camera.current = true
	$UpgradeDialog.visible = true

func _ready() -> void:
	load_selected_level()
	pause_physics()
	show_level()


func _on_Upgrade_Dialog_on_start():
	unpause_physics()
