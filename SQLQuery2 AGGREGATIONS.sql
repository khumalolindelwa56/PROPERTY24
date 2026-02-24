select*
from dbo.property24;

-- SWCTION 1

-- Question 1
 select COUNT(*) AS total_properties
 from dbo.property24;

 -- Question 2
 select province, COUNT (*) number_properties 
 from dbo.property24
 GROUP BY province;

 -- Question 3
 select city, COUNT (*) number_properties
 from dbo.property24
 GROUP BY city;

 -- Question 4
 select COUNT (*) number_properties
 from dbo.property24
 where 2>bedrooms;

 -- Question 5
 select COUNT (*) number_properties
 from dbo.property24
 where 2>bathrooms;

 -- Question 6
 select COUNT (*) number_properties
 from dbo.property24
 where 2<parking;

 -- Question 7
 select COUNT (*) number_properties
 from dbo.property24
 where property_price >3000000;

 -- Question 8
 select COUNT (*) number_properties
 from dbo.property24
 where province ='gauteng';

 -- Question 9
 select province, COUNT (*) number_properties
 from dbo.property24
 where province >200
 group by province;

 -- Question 10
 select COUNT(distinct province) number_properties
 from dbo.property24;
 
 

