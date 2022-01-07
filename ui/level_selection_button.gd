extends Control

var level

func init(lvl) -> void:
	if State.max_level_unlocked < lvl:
		$Main.disabled = true
	
	self.level = lvl
	$Main.text = str(lvl)
