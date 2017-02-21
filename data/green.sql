drop table if exists green;

create table green (
VendorID text,
lpep_pickup_datetime text,
Lpep_dropoff_datetime text,
Store_and_fwd_flag text,
RateCodeID text,
Pickup_longitude text,
Pickup_latitude text,
Dropoff_longitude text,
Dropoff_latitude text,
Passenger_count text,
Trip_distance numeric(9,2),
Fare_amount numeric(9,2),
Extra numeric(6,2),
MTA_tax numeric(6,2),
Tip_amount numeric(6,2),
Tolls_amount numeric(6,2),
Ehail_fee numeric(6,2),
improvement_surcharge numeric(6,2),
Total_amount numeric(9,2),
Payment_type int,
Trip_type int

);
