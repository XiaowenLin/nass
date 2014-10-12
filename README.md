nass
====
USDA database easy query: http://quickstats.nass.usda.gov/
Two methods implemented. 
1. download crop file from developer/ftp. Use MySQL query to get data from local database; 
   Alter the size limit of mysql table. Efficient. 
2. python query thru NASS api. Inefficient. 
