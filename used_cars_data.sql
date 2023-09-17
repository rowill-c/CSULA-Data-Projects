CREATE EXTERNAL TABLE usedcardata (vin STRING, back_legroom STRING, bed STRING, bed_height STRING, bed_length STRING, body_type STRING,
 
cabin STRING, city STRING, city_fuel_economy STRING, combine_fuel_economy STRING, daysonmarket STRING, dealer_zip STRING, description STRING,

engine_cylinders STRING, engine_displacement STRING, engine_type STRING, exterior_color STRING, fleet STRING, frame_damaged STRING, franchise_dealer STRING, 

franchise_make STRING, front_legroom STRING, fuel_tank_volume STRING, fuel_type STRING, has_accidents STRING, height STRING, highway_fuel_economy STRING, horsepower STRING, 

interior_color STRING, isCab STRING, is_certifed STRING, is_cpo STRING, is_new STRING, is_oemcpo STRING, latitude STRING, length STRING, listed_date STRING, listing_color STRING, listing_id STRING,

longitude STRING, main_picture_url STRING, major_options STRING, make_name STRING, maximum_seating STRING, mileage STRING, model_name STRING, owner_count STRING, 

power STRING, price STRING, salvage STRING, savings_amount STRING, seller_rating STRING, sp_id STRING, sp_name STRING, theft_title STRING, torque STRING,

transmission STRING, transmission_display STRING, trim_id STRING, trim_name STRING, vehicle_damage_category STRING, wheel_system STRING, wheel_system_display STRING,

wheelbase STRING, width STRING, year INT)

ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'

STORED AS TEXTFILE

LOCATION '/user/jkoa/usedcars'

TBLPROPERTIES ('skip.header.line.count'='1');
