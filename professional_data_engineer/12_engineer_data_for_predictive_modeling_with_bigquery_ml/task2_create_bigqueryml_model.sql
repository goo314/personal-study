create or replace model `taxirides.fare_model_497`
  transform(ST_Distance(ST_GeogPoint(pickup_longitude, pickup_latitude), ST_GeogPoint(dropoff_longitude, dropoff_latitude)) AS euclidea, fare_amount_538)
  options(model_type='linear_reg', input_label_cols=['fare_amount_538'])
as
select * except (passenger_count, pickup_datetime)
from taxirides.taxi_training_data_379