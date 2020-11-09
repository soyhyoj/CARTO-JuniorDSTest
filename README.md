# CARTO-JuniorDSTest
CARTO Junior Data Scientist Take Home Test (Nov 2020)


## Working environment
For this test, I created docker containers for a Postgis database and a Jupyternotebook using a docker compose. [Configuration file for the multi-container environment](https://github.com/soyhyoj/CARTO-JuniorDSTest/blob/main/docker-compose.yml) is avialable in this repository.


## Results:
Two tasks of this test were separately handled in different jupyter notebooks:
1. [ETL](https://github.com/soyhyoj/CARTO-JuniorDSTest/blob/main/notebooks/1.ETL.ipynb)
2. [Data exploration and baseline modeling](https://github.com/soyhyoj/CARTO-JuniorDSTest/blob/main/notebooks/2.EDA%2Bbaseline.ipynb)


## Report:


## Languages used in this project
Python and SQL.


## Libraries used used in this project
Libraries for geospatial data processing (e.g. geopandas, geopy, GeoAlchemy2) were used in addition to the eneral pydata stack (pandas, numpy, sklearn, matplotlib, seaborn)


## Data
All data files were saved under "./data" directory.

1. NYC taxi data (Jan, Apr, July 2015) [.zip](https://storage.googleapis.com/hiring-test/data.zip)
2. ACS demographic and socio-economic data by census block group [.csv](https://storage.3.googleapis.com/hiring-test/nyc_acs_demographics.csv)
3. NYC census block group geometries [.json](https://storage.googleapis.com/hiring-test/nyc_cbg_geoms.geojson)
 

