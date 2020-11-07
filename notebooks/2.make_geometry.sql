
drop table if exists pickup_blocks_jan

#######################################################################################
# get geometry of pickup points using (long, lat)
# create a spatially joined table using pickup points and census block polygons

create table pickup_blocks_jan as
with
	jan_geom as
	(
		select
			tpep_pickup_datetime as pickup_time,
			ST_SetSRID(ST_MakePoint(pickup_longitude, pickup_latitude), 4326) as pickup_point
		from taxi_jan
	)
select jan.*, census.*
from jan_geom as jan, census_blocks as census
where ST_Contains(census.geometry, jan.pickup_point);


create table pickup_blocks_apr as
with
	apr_geom as
	(
		select
			tpep_pickup_datetime as pickup_time
			ST_SetSRID(ST_MakePoint(pickup_longitude, pickup_latitude), 4326) as pickup_point
		from taxi_apr
	)
select apr.*, census.*
from apr_geom as apr, census_blocks as census
where ST_Contains(census.geometry, apr.pickup_point);


create table pickup_blocks_jul as
with
	jul_geom as
	(
		select
			tpep_pickup_datetime as pickup_time
			ST_SetSRID(ST_MakePoint(pickup_longitude, pickup_latitude), 4326) as pickup_point
		from taxi_jul
	)
select jul.*, census.*
from jul_geom as jul, census_blocks as census
where ST_Contains(census.geometry, jul.pickup_point);

# end of query
###################################################################################################
