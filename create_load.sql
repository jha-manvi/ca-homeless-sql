-- Creating Table --

create table covid_ca_homeless_impact
(date varchar(10),
county varchar(50),
rooms_available varchar(25),
rooms_requested varchar(25),
trailers_requested varchar(25),
trailers_delivered varchar(25),
donated_trailers_delivered varchar(25));

-- loading data from the csv file to the table
COPY covid_ca_homeless_impact(date, county, rooms_available, 
							  rooms_requested, trailers_requested, 
							  trailers_delivered, donated_trailers_delivered)
FROM
'/tmp/housing-impact-data-file.csv'
DELIMITER '	'
CSV HEADER;

-- checking if the data load was successful
select * from covid_ca_homeless_impact