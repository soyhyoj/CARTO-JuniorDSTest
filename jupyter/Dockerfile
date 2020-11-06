# Start from a basic image.
FROM jupyter/base-notebook:python-3.7.6


# Install requirements. No cache to lower the image size.
RUN pip install --no-cache geopandas==0.8 \
	geojson \
	psycopg2-binary \
	shapely \
	contextily \
	pandas==1.1.1 \
	numpy==1.19.1 \
	scipy==1.4.1 \
	matplotlib==3.3 \
	seaborn==0.10.0 \
	scikit-learn==0.23.2

VOLUME /notebooks
WORKDIR /notebooks
