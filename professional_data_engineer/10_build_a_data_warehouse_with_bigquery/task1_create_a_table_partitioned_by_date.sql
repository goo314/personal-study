create or replace table covid.oxford_policy_tracker 
partition by date 
options ( partition_expiration_days = 1445)
as 
(
  select * from `bigquery-public-data.covid19_govt_response.oxford_policy_tracker`
  where alpha_3_code not in ('GBR', 'BRA', 'CAN', 'USA')
)