extends Node

signal on_level_shown
signal on_won

const SECONDS_TO_SHOW_LEVEL = 5

var is_showing_level = false

func show_level() -> void:
	$CameraPath/Follow/Cam.current = true
	is_showing_level = true

func _process(delta):
	if is_showing_level:
		$CameraPath/Follow.unit_offset += delta / SECONDS_TO_SHOW_LEVEL
		
		if $CameraPath/Follow.unit_offset >= 1.0:
			$CameraPath/Follow/Cam.current = false
			is_showing_level = false
			emit_signal("on_level_shown")


func _on_won():
	if (State.selected_level >= State.max_level_unlocked):
		State.max_level_unlocked = State.selected_level + 1
	emit_signal("on_won")
