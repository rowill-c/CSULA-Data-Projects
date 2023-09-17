Create Table UsedCars (year string, make_name string, model_name string, body_type string, transmission string, listing_color string, price string, is_new string, owner_count string, latitude string, longitude string);

CREATE EXTERNAL TABLE UsedCars (year string, make_name string, model_name string, body_type string, transmission string, listing_color string, price string, is_new string, owner_count string, latitude string, longitude string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE;
LOCATION '/user/joshuakoa/used_cars_data.csv';
TBLPROPERTIES ('skip.header.line.count'='1');

CREATE EXTERNAL TABLE if not exists time_zone_map (
 time_zone string,
 country string,
 notes string )
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE
LOCATION '/user/jwoo5/tmp/data/tables/time_zone_map'

CREATE EXTERNAL TABLE UsedCarsTest (year string, make_name string, model_name string, body_type string, transmission string, listing_color string, price string, is_new string, owner_count string, latitude string, longitude string)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
TBLPROPERTIES ('skip.header.line.count'='1');

LOCATION '/user/joshuakoa/itversity/used_cars_data.csv';

unzip archive.zip
hdfs dfs -mkdir usedcars
hdfs dfs -moveFromLocal used_cars_data.csv /user/joshuakoa/usedcars

create database joshuakoa_usedcarstest_db;
use joshuakoa_usedcarstest_db;

load data inpath 'usedcars/used_cars_data.csv' into table usedcars;

