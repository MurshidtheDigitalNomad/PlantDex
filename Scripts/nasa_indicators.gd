extends Node

@onready var soil_moisture_progress_bar: TextureProgressBar = $SoilMoistureLabel/SoilMoistureProgressBar
@onready var ndvi_progress_bar: TextureProgressBar = $NDVILabel/NDVIProgressBar
@onready var health_progress_bar: TextureProgressBar = $HealthLabel/HealthProgressBar

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	soil_moisture_progress_bar.value=20
	ndvi_progress_bar.value=40
	health_progress_bar.value=60
	
	
