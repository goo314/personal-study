update qwiklabs-gcp-01-caaf8d553129.covid_data.consolidate_covid_tracker_data as a
set mobility = 
  (
    SELECT 
    struct
    (
    AVG(retail_and_recreation_percent_change_from_baseline) as avg_retail,
    AVG(grocery_and_pharmacy_percent_change_from_baseline) as avg_grocery,
    AVG(parks_percent_change_from_baseline) as avg_parks,
    AVG(transit_stations_percent_change_from_baseline) as avg_transit,
    AVG( workplaces_percent_change_from_baseline ) as avg_workplace,
    AVG( residential_percent_change_from_baseline) as avg_residential
    )
    FROM `bigquery-public-data.covid19_google_mobility.mobility_report` as b
  where a.country_name = b.country_region and a.date = b.date
)
where true
