# GG 469 Wint 2022 - Project Outline

Create a design for a Natural Heritage System (Greenlands System) for the City of Brampton, Ontario. Work primarly within the study area but consider adjacent areas and there effect on your design.  Use, Forman, R.T.T. Some general principles of landscape and regional ecology. Landscape Ecol 10, 133–142 (1995) as a primary source to understand the basic tenants of a good natural heritage system design.

## Project Breakdown (Process)

**Data Acquisition and Analysis** - Reviewing all provided data and its metadata, and selecting additional, external data sets based on our discussions of project scope. 

**Creation of Study Area** - Course provided data included a file of 28 separate .TIF Landsat imagery files, each a square with an edge length of 2.5km and an area of 6.25km². When all layers were projected they form a square with an area of approx. 175km², however each of the external images had a black "border". 

Boarder was removed by adding "0" to the No Data Value property for the layer, which is remove some pixels from withing the map that had a value of "0", however it seamed a suitable workaround that did not ultimately affect the outcome of the map. (See Before and after pictures)

**BEFORE** - With Borders.
![TIF_WithBorder](/imgs/TIF_WithBorder.jpg)
**AFTER** - Without Borders.
![TIF_WithBorder](/imgs/TIF_WithoutBorder.jpg)

**Separation of Land-use Features** - The primary layer used in this project was "elc_cvc_nad83v2sel", mapping the Ecological Land Classification (ELC) of our study area, preformed by Credit Valley Conservation (CVC). Using the Split Vector Layer tool, selecting for 'TYPE' we were able to create separate layers for all 23 types. 

Due to the timeframe and relative scope of this project we were less concerned on the exact ELC type (eg. Coniferous Forest) and more on the overarching land use (e,g Forest), for this reason we then merged similar types. This left us with layers for Woodlands, Wetlands, Cultural Lands, Developed Lands, and Agricultural lands. 

Clipped the Watercourse layer from Ont_GeoHub, then using the Attributes table manually selected each segment of the credit river and merged to create a single "CreditRiver_Main", then used the Difference tool with that to separate all the tributaries off of the main, saving and labeling them "CreditRiver_Tribs". 
**BEFORE** - ELC Un-edited
![ELC_Unedited](/imgs/ELC_Type_Unedited.jpg)
**AFTER** - ELC Seperated
![ELC_Unedited](/imgs/ELC_Type_Seperated.jpg)

**Determining Areas for NHS Growth** - With the objective of strengthining or enlarging the exsiting natural areas, we had to define where we could realesticly expand protected areas. the conclustion was existing farm lands were the most likely place to expand and thast any 'Urban' or 'Developed' area would be out of bounds. 



## Difficulties

- Collaborations, No effective Multi-User GIS software, 
- Data Sources, Variations in source data availability,
    - Only Raster Imagery Available was Provided .TIF from 1996, original plan was to get addition imagery for modern date to provide comparison. 
- Automation/ Mechanization of organization of a organic/ Natural feature structure
- 
WGS 84 - EPSG:4326
