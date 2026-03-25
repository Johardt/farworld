extends TileMapLayer

@onready var tile_selector: Sprite2D = $"../TileSelector"
@onready var tilesize: Vector2i = tile_set.tile_size;

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("select tile"):
		var mouse_pos: Vector2 = get_local_mouse_position()
		var tile_pos: Vector2i = local_to_map(mouse_pos)
		@warning_ignore("integer_division")
		var target_pos: Vector2i = tile_pos * tilesize + (tilesize / 2)
		tile_selector.position = target_pos
