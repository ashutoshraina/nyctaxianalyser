-----
SELECT 
  ROUND(AVG(yellow.total_amount)::numeric,2) as "Average Trip Cost", 
  to_char(yellow.tpep_pickup_datetime, 'dy') as "Day Of The Week",
  holidays.name as Holiday
FROM yellow, holidays
WHERE yellow.tpep_pickup_datetime = holidays.date
group by holidays.date, to_char(yellow.tpep_pickup_datetime, 'dy'), holidays.name;
----

SELECT 
  ROUND(AVG(yellow.total_amount)::numeric,2) as "Average Trip Cost", 
  to_char(yellow.tpep_dropoff_datetime, 'dy') as "Day Of The Week",
  holidays.name as Holiday
FROM yellow, holidays
WHERE yellow.tpep_dropoff_datetime = holidays.date
group by holidays.date, to_char(yellow.tpep_dropoff_datetime, 'dy'), holidays.name;

-----

SELECT 
  ROUND(AVG(yellow.total_amount)::numeric,2) as "Average Trip Cost", 
  to_char(yellow.tpep_pickup_datetime, 'dy') as "Day Of The Week"
FROM yellow
group by to_char(yellow.tpep_pickup_datetime, 'dy')
order by to_char(yellow.tpep_pickup_datetime, 'dy');

-----

SELECT 
   ROUND(AVG(yellow.total_amount)::numeric,2) as "Average Trip Cost", 
  to_char(yellow.tpep_pickup_datetime, 'dy') as "Day Of The Week",
  weather.event as "Weather Event"
FROM  yellow, weather
WHERE yellow.tpep_pickup_datetime = weather.event 
group by to_char(yellow.tpep_pickup_datetime, 'dy'), weather.event;

-----

SELECT 
  ROUND(AVG(yellow.total_amount)::numeric,2) as "Average Trip Cost", 
  to_char(yellow.tpep_dropoff_datetime, 'dy') as "Day Of The Week",
  weather.event as "Weather Event"
FROM yellow, weather
WHERE yellow.tpep_dropoff_datetime = weather.event 
group by to_char(yellow.tpep_dropoff_datetime, 'dy'), weather.event;

-----

WITH EVENT_DATA AS ( 
SELECT 
  ROUND(AVG(yellow.total_amount) ::numeric,2) as "Average Trip Cost", 
  to_char(yellow.tpep_pickup_datetime, 'dy') as "Day Of The Week",
  weather.event as "Weather Event"
FROM  yellow, weather
WHERE yellow.tpep_pickup_datetime = weather.event 
group by to_char(yellow.tpep_pickup_datetime, 'dy'), weather.event
)

Select ROUND(avg("Average Trip Cost") ::numeric,2) , "Day Of The Week"
from EVENT_DATA
group by "Day Of The Week";