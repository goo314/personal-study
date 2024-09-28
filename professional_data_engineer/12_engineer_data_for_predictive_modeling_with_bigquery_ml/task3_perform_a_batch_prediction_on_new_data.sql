create or replace table `taxirides.2015_fare_amount_predictions` as
select 
  predicted_fare_amount_538
from 
  ml.PREDICT(MODEL `taxirides.fare_model_497`,
  (
    select 
      ST_Distance(ST_GeogPoint(pickuplon, pickuplat), ST_GeogPoint(dropofflon, dropofflat)) as euclidea,
      pickuplon as pickup_longitude,
      pickuplat as pickup_latitude,
      dropofflon as dropoff_longitude,
      dropofflat as dropoff_latitude
    from taxirides.report_prediction_data
  )
)
