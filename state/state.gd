extends Node

export(String) var savegame_path = "user://savegame"

var max_level_unlocked = 1
var money = 0

# ========= Persitance API

func savegame_exists() -> bool:
	return File.new().file_exists(savegame_path)


func load_savegame() -> void:
	assert(savegame_exists())
	
	var file = File.new()
	file.open(savegame_path, File.READ)

	var data = parse_json(file.get_line())
	max_level_unlocked = data["max_level_unlocked"]
	money = data["money"]


func save_savegame() -> void:
	var file = File.new()
	file.open(savegame_path, File.WRITE)
	
	var data = {
		"max_level_unlocked": max_level_unlocked,
		"money": money
	}
	
	file.store_line(to_json(data))
