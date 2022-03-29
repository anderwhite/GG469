# Brampton Natural Heritage System (NHS) Mapping

**Project Description** - Our Team set out to re-design the Natural Heritage System (Greenland's System) for the City of Brampton, Ontario. Work primary within the study area but consider adjacent areas and there effect on your design. Our team worked with data from the year 1996, prior to the cities significant growth. The results are meant to show areas that could have potentially been naturalized had a more aggressive NHS been put in place at this time. Use, Forman, R.T.T. Some general principles of landscape and regional ecology. We used Landscape Ecology 10, 133–142 (1995) as a primary source to understand the basic tenants of a good natural heritage system design.

## Project Breakdown (Process)

**Data Acquisition and Analysis** - Reviewing all provided data and its metadata, and selecting additional, external data sets based on our discussions of project scope. 

**Creation of Study Area** - Course provided data included a file of 28 separate .TIF Landsat imagery files, each a square with an edge length of 2.5km and an area of 6.25km². When all layers were projected they form a square with an area of approx. 175km², however each of the external images had a black "border". 

Boarder was removed by adding "0" to the No Data Value property for the layer, which is remove some pixels from withing the map that had a value of "0", however it seamed a suitable workaround that did not ultimately affect the outcome of the map. (See Before and after pictures)

**BEFORE** - With Borders.
![TIF_WithBorder](/imgs/TIF_WithBorder2.jpg)
**AFTER** - Without Borders.
![TIF_WithoutBorder](/imgs/TIF_WithoutBorder2.jpg)

**Separation of Land-use Features** - The primary layer used in this project was "elc_cvc_nad83v2sel", mapping the Ecological Land Classification (ELC) of our study area, preformed by Credit Valley Conservation (CVC). Using the Split Vector Layer tool, selecting for 'TYPE' we were able to create separate layers for all 23 types. 

Due to the timeframe and relative scope of this project we were less concerned on the exact ELC type (eg. Coniferous Forest) and more on the overarching land use (e,g Forest), for this reason we then merged similar types. This left us with layers for Woodlands, Wetlands, Cultural Lands, Developed Lands, and Agricultural lands. 

Clipped the Watercourse layer from Ont_GeoHub, then using the Attributes table manually selected each segment of the credit river and merged to create a single "CreditRiver_Main", then used the Difference tool with that to separate all the tributaries off of the main, saving and labeling them "CreditRiver_Tribs". 

**BEFORE** - ELC Un-edited
![ELC_Unedited](/imgs/ELC_Type_Unedited.jpg "ELC Type Unedited")
**AFTER** - ELC Separated
![ELC_Unedited](/imgs/ELC_Type_Seperated.jpg "ELC Type Separated")

**Determining Areas for NHS Growth** - With the objective of strengthening or enlarging the existing natural areas, we had to define where we could realistically expand. The conclusion was that agricultural lands were the most likely candidate for naturalizations and that any 'Urban' or 'Developed' area would be out of bounds. Using our groups research on best practices, we determined that expanding our existing natural areas by a 60 meter buffer would provide a significant increase in protection for most terrestrial and aquatic species likely found in this area. Buffers ranging from 20 meter to 120 meters were applied to the land uses types in varying combinations, but ultimately a consistent 60 meter buffer on all types seamed most pragmatic. We then removed any buffer area that fell within the "Developed" layer" ensuring our NHS would only grow into agricultural areas. (See "NHS_Feature")

![NHS_Features](/imgs/NHS_Features.jpg "NHS Features")

**Formatting Layer for Leaflet** - The final portion of work done in QGIs was to optimize for decimation, in this case interactive web mapping using [Leaflet.js](https://leafletjs.com/SlavaUkraini/). Our objective here was to create separate, selectable features for Core Area, Corridor Area and Steppingstone Areas. Using the 'NHS_Features_Final', we manually delineated each feature (which were comprised of the woodland, wetland, and cultural areas), creating separate shape files for each. This resulted in 100 shape files, which were then merged into the single part layer 'NHS_Features_Leaflet', as saved in the projection WGS84 (EPSG:4326), the preferred projection for Leaflet. There appeared to be no effective way to automate the delineation of features as it was not based on attributes but rather by visual extend - which areas look like core vs corridor based on size and shape. (See image of "NHS_Features_Leaflet" with a feature selected.)

![NHS_Features_Leaflet](/imgs/NHS_Features_Leaflet_Select.jpg)

## Difficulties
Missing data in upper stream human error
Couldn't clip out roads, 
This NHS is a guide for where protected area should grow, actual areas changed should be dealt with on a small scale project bases.
- Collaborations, No effective Multi-User GIS software, 
- Data Sources, Variations in source data availability,
    - Only Raster Imagery Available was Provided .TIF from 1996, original plan was to get addition imagery for modern date to provide comparison. 
- Automation/ Mechanization of organization of a organic/ Natural feature structure
- 
WGS 84 - EPSG:4326
