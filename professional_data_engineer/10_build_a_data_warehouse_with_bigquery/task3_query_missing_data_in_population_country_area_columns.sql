(
select distinct country_name FROM `qwiklabs-gcp-01-caaf8d553129.covid_data.oxford_policy_tracker_worldwide`
where country_area is null 
union all 
select distinct country_name FROM `qwiklabs-gcp-01-caaf8d553129.covid_data.oxford_policy_tracker_worldwide`
where population is null
)
order by country_name