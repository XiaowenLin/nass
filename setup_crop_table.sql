use NASSCROP;

create table crop(
    id int not null auto_increment,
    SOURCE_DESC         varchar(10),
    SECTOR_DESC         varchar(50),
    GROUP_DESC          varchar(50),
    COMMODITY_DESC      varchar(50),
    CLASS_DESC          varchar(20),
    PRODN_PRACTICE_DESC varchar(50),
    UTIL_PRACTICE_DESC  varchar(50),
    STATISTICCAT_DESC   varchar(10),
    UNIT_DESC         	varchar(10),
    SHORT_DESC        	varchar(100),
    DOMAIN_DESC         varchar(50),
    DOMAINCAT_DESC			varchar(20),
    AGG_LEVEL_DESC      varchar(50),
    STATE_ANSI          smallint,
    STATE_FIPS_CODE	    smallint,
    STATE_ALPHA	        varchar(5),
    STATE_NAME        	varchar(20),
    ASD_CODE          	varchar(50),
    ASD_DESC          	varchar(50),
    COUNTY_ANSI       	varchar(50),
    COUNTY_CODE       	varchar(50),
    COUNTY_NAME	        varchar(50),
    REGION_DESC       	varchar(50),
    ZIP_5             	smallint,
    WATERSHED_CODE    	smallint,
    WATERSHED_DESC     	varchar(100),
    CONGR_DISTRICT_CODE	int,
    COUNTRY_CODE      	smallint,
    COUNTRY_NAME      	varchar(15),
    LOCATION_DESC     	varchar(50),
    YEAR                smallint,
    FREQ_DESC           varchar(50),
    BEGIN_CODE          smallint,
    END_CODE	          smallint,
    REFERENCE_PERIOD_DESC  varchar(10),
    WEEK_ENDING            varchar(50),
    LOAD_TIME	          datetime,
    VALUE              	int,
    CV     decimal(3, 1),
    primary key (id)
);


# \! wc -l crops.txt
# 14512299
ALTER TABLE crop MAX_ROWS=14512300;

