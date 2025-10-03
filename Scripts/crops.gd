extends TileMapLayer


const GRASS_TILE = Vector2i(1, 0)
const WATER_TILE = Vector2i(0, 1)
const SOURCE_ID = 2  # your tileset source ID (check in TileSet editor)


func _unhandled_input(event):
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var tile_pos = local_to_map(get_local_mouse_position())
		if tile_pos.x >= 17 and tile_pos.x<=35 and tile_pos.y>=6 and tile_pos.y<=15:
			print(tile_pos)
			set_cell(tile_pos, SOURCE_ID, WATER_TILE)
			
		else:
			print("No")
			
		
