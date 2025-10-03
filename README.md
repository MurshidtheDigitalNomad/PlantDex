How to play:
To play the video game, open project.godot and then click the Play button on the right hand corner.

Features:

NASA API USAGE:

NASA POWER - provides temperature , precipitation , solar radiation , wind speed and relative humidity.

NASA SMAP - measures soil moisture, Freeze/Thaw Status

NASA IMERG - Precipitation Value

NASA MODIS - Normalized Difference Vegetation Index (Level of greenness from satellite)


DATA EXPLAINER MODES:

1)Crop Mode

Clicking on the crop mode, players will be able to check information of the crops when the crops are clicked while on this mode, 

The Fields: static(min temp, max temp, soil moisture min, ndvi threshold, water requirement)
	updating values(body temp, soil moisture(in soil), ndvi)
	Body temp can be equal to weather temp but can change by different methods applied

The updating values will be red, yellow or green suggesting how healthy the crop is.

Crop Info:
Body temperature:
Soil Moisture:
NDVI: 

Temp greater or less than max/min temp will suggest heat/cold stress
Soil moisture< soil moisture min will suggest water stress

Plantdex will suggest
NDVI Current Value > 0.85* ndvi threshold == good ndvi value
NDVI Current Value < 0.85* ndvi threshold == bad ndvi value - crop is stressed
1.Temp greater or less than max/min temp will suggest heat/cold stress
2.Soil moisture< soil moisture min will suggest water stress
3.Otherwise, soil nutrient or pest issue (can be resolved by fertilizers or pesticides)
To find if it is a soil nutrient issue or pest issue we can check if the POWER values match with the optimum conditions for pest production.
0.85*ndvi threshold means ndvi current value is at 85% of historical ndvi value for crop


2)Soil Mode

Clicking on the soil mode, players will be able to check the soil moisture value of each grid of soil , the water deficit or excess will be calculated using the formula above (initially water deficit can be considered 50mm) 

Users then can click the monitor button:

Two graphs will then appear 
(one small square mid soil moisture value vs datetime)
(average soil moisture value vs datetime)

Plantdex will suggest now if a small piece of land has drying issue or water issue compared to others. Hence mitigation must be done (Shop will have these)

Soil Information:
Date: 

SMAP: 
Water Deficit:
Water Access: 

3)Weather Mode

Clicking on weather mode, players will be able to check the weather forecast for the next 30 days. 
It will have a ui where each block which includes the date will have temp val, precipitation val,wind val, solar val. Possible disasters that can happen will be indicated.

Plantdex will provide the data that
Heatwave : 35 C or above
Cold Stress: 12 C or below
Flood : 50mm prec
Drought : 2mm prec
High wind: 10m/s

Also clicking on the crops state their weaknesses:
"aman_rice": {"heatwave": 36, "flood_rain": 60},
"boro_rice": {"cold_stress": 15},
"wheat": {"heatwave": 32, "drought_rain": 5},
"maize": {"high_wind": 8},
"potato": {"cold_stress": 10, "flood_rain": 40},
 "tomato": {"heatwave": 33, "high_wind": 7}

So Plantdex will suggest protection methods:
Heatwave- Irrigate early morning , use shade nets
Cold Stress- Implement Cover Crops
Flood Risk- Build new drainage , form contours to stop overflowing
Drought- Irrigation needs to take care of that using soil moisture values
High Wind-Planting trees will help to reduce wind speed
(There may always be losses but we must look at better ways to tackle the issue)


4)Water Mode (Scratch Programming Type Format)
Form irrigation schedules for the week . (Initially use workers, later use drip irrigation systems)

Use simple logic blocks to form precision irrigation systems:

Initially plantdex suggests an everyday irrigation of 10mm per piece of land.

We optimize it by targeting specific pieces of land with unique logics. 

Then a monthly report is formed after the 1st month suggesting total water excess used vs optimum water that could have managed the farm. A grade will be provided by this data. The grade received has to be a tested value where all the excess or deficit water used will be averaged. And then on a grade threshold , a grade will be received. 
