extends Node

export(String) var savegame_path = "user://savegame"

var max_level_unlocked = 15
var money = 0
var stars_per_level = []

var selected_level = null

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
	stars_per_level = data["stars_per_level"]


func save_savegame() -> void:
	var file = File.new()
	file.open(savegame_path, File.WRITE)
	
	var data = {
		"max_level_unlocked": max_level_unlocked,
		"money": money,
		"stars_per_level": stars_per_level
	}
	
	file.store_line(to_json(data))

# ========= Stars API

func get_stars_for_level(level: int) -> int:
	if level >= stars_per_level.size():
		return 0
	return stars_per_level[level]

func set_stars_for_level(level: int, stars: int) -> void:
	if level >= stars_per_level.size():
		stars_per_level.resize(level + 1)
	
	var cur_stars = stars_per_level[level]
	if cur_stars or cur_stars < stars:
		stars_per_level[level] = stars
