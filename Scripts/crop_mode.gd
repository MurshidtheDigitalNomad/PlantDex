extends Node2D

@onready var soil_moisture: Label = $CropState/SoilMoisture
@onready var body_temperature: Label = $CropState/BodyTemperature
@onready var ndvi: Label = $CropState/NDVI

@onready var water_requirement: Label = $CropInformation/WaterRequirement
@onready var ndvi_threshold: Label = $CropInformation/NDVIThreshold
@onready var min_smap: Label = $CropInformation/MinSMAP
@onready var max_temp: Label = $CropInformation/MaxTemp
@onready var min_temp: Label = $CropInformation/MinTemp
@onready var plantdex_recommends_answer: Label = $PlantdexRecommends/PlantdexRecommendsAnswer




func _ready():
	#crop state
	#ndvi.text= "NDVI: %.2f" % info["NDVI"]
	#body_temperature.text = "Body Temp: %.1f °C" % info["Body Temperature"]
	#soil_moisture.text = "Soil Moisture: %.2f" % info["Soil Moisture"]
	#crop information
	water_requirement.text= "Water Requirement:" + str(CropDatabase.crops['carrot'].water_requirement)
	ndvi_threshold.text = "NDVI Threshold:" + str(CropDatabase.crops['carrot'].ndvi_threshold)
	min_smap.text="Minimum Soil Moisture:" + str(CropDatabase.crops['carrot'].soil_moisture_min)
	max_temp.text="Maximum Temperature:" + str(CropDatabase.crops['carrot'].max_temp)
	min_temp.text="Minimum Temperature:" + str(CropDatabase.crops['carrot'].min_temp)
	
	#plandex recommendation
	#plantdex_recommends_answer.text = "Status: " + info["status"] + "\nIssues: " + ", ".join(info["issues"])
	visible = true
