########################################################################################
# create a new table called 'taxi_geom' which contains (long, lat) as geometry attribute

with all_geom as
	(
	with
	jan_geom as
	(
		select
			tpep_pickup_datetime,
			tpep_dropoff_datetime,
			ST_SetSRID(ST_MakePoint(pickup_longitude, pickup_latitude), 4326) as pickup_point,
			ST_SetSRID(ST_MakePoint(dropoff_longitude, dropoff_latitude), 4326) as dropoff_point
		from taxi_jan
	),
	
	apr_geom as
	(
		select
			tpep_pickup_datetime,
			tpep_dropoff_datetime,
			ST_SetSRID(ST_MakePoint(pickup_longitude, pickup_latitude), 4326) as pickup_point,
			ST_SetSRID(ST_MakePoint(dropoff_longitude, dropoff_latitude), 4326) as dropoff_point
		from taxi_apr
	),
	
	jul_geom as
	(
		select
			tpep_pickup_datetime,
			tpep_dropoff_datetime,
			ST_SetSRID(ST_MakePoint(pickup_longitude, pickup_latitude), 4326) as pickup_point,
			ST_SetSRID(ST_MakePoint(dropoff_longitude, dropoff_latitude), 4326) as dropoff_point
		from taxi_jul
	)
	
	select * from jan_geom 
	union
	select * from apr_geom
	union
	select * from jul_geom
	
	)

select *
into table taxi_geom
from all_geom

# end of query
#######################################################################################