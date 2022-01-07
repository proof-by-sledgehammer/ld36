extends Button

var level

func _init(lvl) -> void:
	if State.max_level_unlocked < lvl:
		self.disabled = true
	
	self.level = lvl
	self.text = str(lvl)
