extends TileMapLayer

# Suppose your TileSet has source_id = 0 (check in the TileSet editor)
# atlas_coords is the tile’s position inside the atlas (like Vector2i(0,0), Vector2i(1,0), etc.)

const GRASS_TILE = Vector2i(1, 0)
const WATER_TILE = Vector2i(0, 0)
const SOURCE_ID = 0  # your tileset source ID (check in TileSet editor)

"""
func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var tile_pos = local_to_map(get_local_mouse_position())

		var source_id = get_cell_source_id(tile_pos)
		var atlas = get_cell_atlas_coords(tile_pos)

		if source_id != -1:  # tile exists
			print("Clicked:", tile_pos, " source:", source_id, " atlas:", atlas)

			if atlas == GRASS_TILE:
				set_cell(tile_pos, SOURCE_ID, WATER_TILE)
			elif atlas == WATER_TILE:
				set_cell(tile_pos, SOURCE_ID, GRASS_TILE)
"""
