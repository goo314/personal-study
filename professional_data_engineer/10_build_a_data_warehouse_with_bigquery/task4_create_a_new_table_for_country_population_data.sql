create or replace table covid_data.pop_data_2019 as 
select * from `bigquery-public-data.covid19_ecdc.covid_19_geographic_distribution_worldwide`
