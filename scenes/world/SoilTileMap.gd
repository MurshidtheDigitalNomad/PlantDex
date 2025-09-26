extends TileMap

signal soil_clicked(cell_position)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT:
		var mouse_pos = get_global_mouse_position()
		var cell = local_to_map(to_local(mouse_pos))

		if get_cell_source_id(0, cell) != -1:  # Check if soil exists at that cell
			print("Soil clicked at cell: ", cell)
			emit_signal("soil_clicked", cell)  # ✅ emit signal, don’t call as a function
