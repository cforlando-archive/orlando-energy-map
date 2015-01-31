create table buildings ( building int not null auto_increment, PID varchar(16), TOTAL_AREA int, CITY_CODE varchar(3), PROP_NAME varchar(64), SITUS varchar(128), CITY_SITUS varchar(64), ZIP_SITUS varchar(5), county varchar(128), latitude float, longitide float, location_type varchar(32), primary key (building));

LOAD DATA INFILE "/tmp/CommercialBldg_over_40000.csv" INTO TABLE buildings (@dummy, PID, TOTAL_AREA, CITY_CODE, PROP_NAME, SITUS, CITY_SITUS, ZIP_SITUS) COLUMNS TERMINATED BY ',' ENCLOSED BY '"' LINES TERMINATED BY '\n' IGNORE 1 LINES;
