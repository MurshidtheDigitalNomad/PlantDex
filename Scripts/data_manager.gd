extends Node

@onready var ndvi_value_bar: TextureProgressBar = $"../NDVI Value Bar"
@onready var soil_moisture_bar: TextureProgressBar = $"../Soil Moisture Bar"
@onready var precipitation_bar: TextureProgressBar = $"../Precipitation Bar"



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	ndvi_value_bar.value-=1
	soil_moisture_bar.value-= 1
	precipitation_bar.value -=1
