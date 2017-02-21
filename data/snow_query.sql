select avg(total_amount) from yellow where yellow.tpep_pickup_datetime  in (select event from snow);

select avg(total_amount) from yellow where yellow.tpep_pickup_datetime  not in (select event from snow);

select avg(trip_distance) from yellow where yellow.tpep_pickup_datetime in (select event from snow);

select avg(trip_distance) from yellow where yellow.tpep_pickup_datetime not in (select event from snow);

set enable_seqscan=false; 

select count(*),snow.event from yellow,snow where yellow.tpep_pickup_datetime = snow.event group by snow.event;

select count(*),yellow.tpep_pickup_datetime from yellow where yellow.tpep_pickup_datetime between
'January/14/2016' and 'January/22/2016' group by yellow.tpep_pickup_datetime;

