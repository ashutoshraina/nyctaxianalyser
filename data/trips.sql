select avg(trip_distance) as "Average Trip Distance",
to_char(yellow.tpep_dropoff_datetime, 'dy') as "Day"
from yellow 
group by to_char(yellow.tpep_dropoff_datetime, 'dy');


select avg(trip_distance) as "Average Trip Distance",
to_char(yellow.tpep_dropoff_datetime, 'mon') as "Month"
from yellow 
group by to_char(yellow.tpep_dropoff_datetime, 'mon');

