extends HBoxContainer

export(int) var num_upgrades = 5
export(String) var display_name

func _ready():
	$Name.text = display_name
	for _i in range(0, num_upgrades):
		var button = CheckBox.new()
		add_child(button)
