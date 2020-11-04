FROM jupyter/datascience-notebook

RUN python --version

RUN conda install --quiet --yes -c \
    conda-forge osmnx dask

RUN pip install geopandas==0.8 \
	geojson \
	psycopg2-binary \
	shapely \
	pandas==1.1.1 \
	numpy==1.19.1 \
	scipy==1.4.1 \
	matplotlib==3.3 \
	seaborn==0.10.0 \
	scikit-learn==0.23.2

VOLUME /notebooks
WORKDIR /notebooks
