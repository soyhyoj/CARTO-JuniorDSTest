# CARTO-JuniorDSTest
CARTO Junior Data Scientist Take Home Test (3-9 Nov 2020)

<br>

## Tasks:
The first process is ETL - NYC taxi data and census block group geometries were loaded to the PostGIS.<br>
The next step is to explore the data to build a baseline model for predicting number of taxi pickup number using ACS dataset.

The two tasks were separately handled in different jupyter notebooks:
1. [ETL](https://github.com/soyhyoj/CARTO-JuniorDSTest/blob/main/notebooks/1.ETL.ipynb)
2. [Data exploration and baseline modeling](https://github.com/soyhyoj/CARTO-JuniorDSTest/blob/main/notebooks/2.EDA%2Bbaseline.ipynb)

Summary report is available: [pdf](https://github.com/soyhyoj/CARTO-JuniorDSTest/blob/main/Summary_Report.pdf).

<br>

## Data
All data files were saved under "./data" directory.

1. NYC taxi data (Jan, Apr, July 2015) [.zip](https://storage.googleapis.com/hiring-test/data.zip)
2. ACS demographic and socio-economic data by census block group [.csv](https://storage.3.googleapis.com/hiring-test/nyc_acs_demographics.csv)
3. NYC census block group geometries [.json](https://storage.googleapis.com/hiring-test/nyc_cbg_geoms.geojson)

<br>

## Working environment
Two docker containers for a PostGIS database and Jupyter notebook were created using a docker compose.

```
docker-compose up --build
```
<br>

## Libraries used in this project
Libraries for geospatial data processing (e.g. geopandas, geopy, GeoAlchemy2) were used in addition to the general pydata stack (pandas, numpy, sklearn, matplotlib, seaborn).


