extends StaticBody2D

export(Array) var skins

func select_random_skin() -> void:
	randomize()
	var idx = randi() % skins.size()
	for i in range(0, skins.size()):
		get_node(skins[i]).visible = idx == i

func _ready() -> void:
	select_random_skin()
