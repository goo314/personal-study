create or replace table `taxirides.taxi_training_data_379` as
select 
  pickup_datetime,
  pickup_longitude,
  pickup_latitude,
  dropoff_longitude,
  dropoff_latitude,
  passenger_count,
  (tolls_amount + fare_amount) as fare_amount_538
from taxirides.historical_taxi_rides_raw
where
  trip_distance > 1
  and fare_amount >= 2
  and pickup_longitude between -90 and 90 and pickup_latitude between -90 and 90 
  and dropoff_longitude between -90 and 90 and dropoff_latitude between -90 and 90 
  and passenger_count > 1
limit 1000000