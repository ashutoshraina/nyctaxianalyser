SELECT 
  count(*) as BookingCount,
  borough
FROM 
  fhv, 
  zone
WHERE 
  fhv.locationid = zone.locationid
group by borough
order by BookingCount DESC;
