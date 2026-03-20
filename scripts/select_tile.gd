extends TileMapLayer

@onready var tile_selector: Sprite2D = $"../TileSelector"

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("select tile"):
		var mouse_pos = get_local_mouse_position()
		var tile_pos: Vector2i = local_to_map(mouse_pos)
		var target_pos: Vector2i = tile_pos * tile_set.tile_size + Vector2i(16, 16)
		tile_selector.position = target_pos
