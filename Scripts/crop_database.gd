extends Node


var crops = {
	"wheat": {
		"stages": [30, 45, 40, 20], # approximate days: germination, vegetative, flowering, maturation
		"kc": [0.7, 1.15, 1.2, 0.7], # crop coefficient per stage
		"root_depth": 0.8,  # meters
		"min_temp": 3,  # minimum temp °C for germination and growth
		"max_temp": 30,  # max tolerated temp °C
		"soil_moisture_min": 0.3, # fraction of available water capacity
		"ndvi_threshold": 0.65,
		"water_requirement": 550  # seasonal water requirement in mm
	},
	"mustard": {
		"stages": [20, 40, 35, 25], # approximate days: germination, vegetative, flowering, maturation
		"kc": [0.6, 1.0, 1.1, 0.6],
		"root_depth": 0.7,
		"min_temp": 5,
		"max_temp": 30,
		"soil_moisture_min": 0.25,
		"ndvi_threshold": 0.6,
		"water_requirement": 400
	},
	"cauliflower_cabbage": {
		"stages": [30, 40, 40, 30], # approximate days: seedling, vegetative, head formation, maturation
		"kc": [0.7, 1.05, 1.1, 0.75],
		"root_depth": 0.5,
		"min_temp": 7,
		"max_temp": 25,
		"soil_moisture_min": 0.5,
		"ndvi_threshold": 0.7,
		"water_requirement": 450
	},
	"carrot": {
		"stages": [20, 50, 30, 20], # approximate days: germination, vegetative, root bulking, maturation
		"kc": [0.7, 1.0, 1.1, 0.8],
		"root_depth": 0.45,
		"min_temp": 5,
		"max_temp": 25,
		"soil_moisture_min": 0.4,
		"ndvi_threshold": 0.65,
		"water_requirement": 400
	}
}
