drop table if exists yellow;

create table yellow (
VendorID int,
tpep_pickup_datetime date,
tpep_dropoff_datetime date,
passenger_count int,
trip_distance numeric(11,2),
pickup_longitude numeric(6,3),
pickup_latitude numeric(6,3),
RatecodeID int,
store_and_fwd_flag text,
dropoff_longitude numeric(6,3),
dropoff_latitude numeric(6,3),
payment_type int,
fare_amount numeric(9,2),
extra numeric(6,2),
mta_tax numeric(6,2),
tip_amount numeric(6,2),
tolls_amount numeric(6,2),
improvement_surcharge numeric(6,2),
total_amount numeric(9,2)

);
