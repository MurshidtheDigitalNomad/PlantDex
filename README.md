# NASA Space Apps Challenge 2025 - PlantDex

## How to Play
To play the game, open `project.godot` and click the **Play** button in the top-right corner.

---

## Tech Stack
- **Game Development:** Godot Engine, GDScript  
- **Models used for PlantDex AI:** **Convolutional Neural Network (CNN)**, **Logistic Regression**, and **Random Forest Classifier**

---

## Features

### NASA API Usage
- **NASA POWER:** Provides temperature, precipitation, solar radiation, wind speed, and relative humidity  
- **NASA SMAP:** Measures soil moisture and Freeze/Thaw Status  
- **NASA IMERG:** Provides precipitation values  
- **NASA LP DAAC:** Normalized Difference Vegetation Index (NDVI) – Level of greenness from satellite imagery

---

### Data Explainer Modes

#### 1) Crop Mode
- Clicking on **Crop Mode** allows players to view detailed crop information when clicking on a crop.  
- **Fields:**  
  - *Static:* Min/Max Temperature, Soil Moisture Min, NDVI Threshold, Water Requirement  
  - *Updating:* Body Temperature, Soil Moisture (in soil), NDVI  
    - Body temperature can match weather temperature but may change based on actions applied  
    - Updating values are color-coded: **Red**, **Yellow**, **Green**, indicating crop health

**Crop Info Analysis:**
- **Body Temperature:** Temp outside max/min → *Heat/Cold stress*  
- **Soil Moisture:** Below min → *Water stress*  
- **NDVI:**  
  - Current NDVI > 0.85 × NDVI threshold → *Good NDVI*  
  - Current NDVI < 0.85 × NDVI threshold → *Crop stressed*

**Other Factors:**  
- Soil nutrient or pest issues can be detected if NDVI stress exists but environmental conditions match optimum levels.

---

#### 2) Soil Mode
- Clicking **Soil Mode** displays soil moisture for each grid.  
- Water deficit or excess is calculated (initially, water deficit = 50mm).  
- Clicking **Monitor** shows two graphs:  
  - Mid-soil moisture vs datetime  
  - Average soil moisture vs datetime

**Soil Information Provided:**  
- Date  
- SMAP Soil Moisture  
- Water Deficit  
- Water Access

PlantDex highlights areas with water stress or excess and suggests mitigation actions.

---

#### 3) Weather Mode
- Clicking **Weather Mode** shows a **30-day weather forecast** with:  
  - Temperature, precipitation, wind speed, solar radiation per day  
  - Possible disasters indicated (heatwave, cold stress, flood, drought, high wind)

**Disaster Thresholds & Crop Weaknesses- SET values in the game:**
| Crop | Heatwave | Cold Stress | Flood | Drought | High Wind |
|------|----------|------------|-------|---------|-----------|
| Aman Rice | 36°C | – | 60mm | – | – |
| Boro Rice | – | 15°C | – | – | – |
| Wheat | 32°C | – | – | 5mm | – |
| Maize | – | – | – | – | 8m/s |
| Potato | – | 10°C | 40mm | – | – |
| Tomato | 33°C | – | – | – | 7m/s |

**Suggested Protection Methods:**  
- Heatwave → Irrigate early morning, use shade nets  
- Cold Stress → Implement cover crops  
- Flood → Build drainage, form contours  
- Drought → Optimize irrigation using soil moisture values  
- High Wind → Plant windbreak trees

---

#### 4) Water Mode
- Form **irrigation schedules** for the week using **block-based logic (Scratch-style)**  
- Initially, PlantDex suggests 10mm irrigation per land plot per day  
- Users can optimize irrigation by targeting specific plots with custom logic  
- Monthly report shows:  
  - Total water used vs optimum water required  
  - Grades are assigned based on efficiency of water use
