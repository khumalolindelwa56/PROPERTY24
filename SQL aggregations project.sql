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
 
-- SECTION 2 

 -- QUESTION 11
 select SUM(CAST(property_price AS BIGINT)) AS total_properties
 from dbo.property24;

 -- QUESTION 12
 select province, SUM(CAST(property_price AS BIGINT)) AS total_properties
 from dbo.property24
 group by province;
 
 -- QUESTION 13
  select city, SUM(CAST(property_price AS BIGINT)) AS total_properties
 from dbo.property24
 group by city;

 -- QUESTION 14
 select SUM(CAST(Monthly_Repayment AS BIGINT)) AS total_monthly_repayment
 from dbo.property24;

 -- QUESTION 15
 select province, SUM(CAST(Monthly_Repayment AS BIGINT)) AS total_monthly_repayment
 from dbo.property24
 group by province;

 -- QUESTION 16
 select SUM(CAST(Total_Once_off_Costs AS DECIMAL (18,2))) AS total_once_off
 from dbo.property24;

 -- QUESTION 17
 select province, SUM(CAST(Total_Once_off_Costs AS DECIMAL (18,2))) AS total_once_off
 from dbo.property24
 group by province;

 -- QUESTION 18
 select SUM(CAST(Total_Once_off_Costs AS DECIMAL (18,2))) AS total_once_off_gauteng
 from dbo.property24
 where province ='gauteng';

 -- QUESTION 19
  select SUM(CAST(Total_Once_off_Costs AS DECIMAL (18,2))) AS total_property_value
 from dbo.property24
 where property_price >4000000;

 -- VIEW TABLE
 select*
from dbo.property24;

 -- QUESTION 20
 select province, SUM(CAST(min_gross_monthly_income as decimal(18,2))) AS total_monthly_income
 from dbo.property24
 GROUP BY province;

 --SECTION 3


-- QUESTION 21
select AVG(CAST(property_price AS BIGINT)) AS average_properties
from dbo.property24;

-- QUESTION 22
select province, AVG(CAST(property_price AS BIGINT)) AS average_properties
from dbo.property24
group by province;

-- QUESTION 23
select city, AVG(CAST(property_price AS BIGINT)) AS average_properties
from dbo.property24
group by city;

-- QUESTION 24
select province, AVG(bedrooms) AS  average_properties
from dbo.property24
group by province;

-- QUESTION 25
select province, AVG(bedrooms) AS  average_properties
from dbo.property24
group by province;

-- QUESTION 26
select province, AVG(floor_size) AS  average_properties
from dbo.property24
group by province;

-- Question 27
select province, AVG(Monthly_Repayment) AS  average_properties
from dbo.property24
group by province;

-- QUESTION 28
select province, AVG(cast(Total_Once_off_Costs AS decimal(18,2))) AS  average_properties
from dbo.property24
group by province;

-- question 29
select province, AVG(cast(Min_Gross_Monthly_Income AS decimal(18,2))) AS  average_properties
from dbo.property24
group by province;

-- question 30
  select AVG(CAST(PROPERTY_PRICE  AS decimal(18,2))) AS total_property_value
 from dbo.property24
 where property_price >3000000;

 
   -- VIEW TABLE
 select*
from dbo.property24;

-- SECTION 4

-- question 31
select TOP 1 province,
AVG(CAST(property_price AS decimal(18,2)))AS average_property
from dbo.property24
group by province
order by average_property DESC;

-- QUESTION 32
select TOP 1 province,
AVG(CAST(property_price AS decimal(18,2)))AS average_property
from dbo.property24
group by province
order by average_property ASC;

-- QUESTION 33
select TOP 1 city,
AVG(CAST(property_price AS decimal(18,2)))AS total_property_value
from dbo.property24
group by city
order by total_property_value DESC;

-- QUESTION 34
select TOP 1 city,
AVG(CAST(property_price AS decimal(18,2)))AS average_property
from dbo.property24
group by city
order by average_property ASC;

-- QUESTION 35
  select province, COUNT (*) AS number_of_properties
 from dbo.property24
 where property_price >2000000
 group by province
 order by province;

 -- QUESTION 36
 select province, AVG(floor_size) AS  average_properties
from dbo.property24
 where property_price >3000000
group by province
order by province;

-- QUESTION 37
  select province, SUM(CAST(property_price AS BIGINT)) AS total_properties_value
 from dbo.property24
 where bedrooms >3
group by province
order by total_properties_value DESC;

-- QUESTION 38
select province, AVG(cast(Monthly_Repayment AS decimal(18,2))) AS  average_monthly_repayment
from dbo.property24
 where property_price >4000000
group by province
order by Average_Monthly_Repayment DESC;

-- QUESTION 39
  select city, COUNT (*) AS number_of_properties
 from dbo.property24
 where parking >2
 group by city
 order by city;

 -- QUESTION 40
select province, AVG(cast(Min_Gross_Monthly_Income AS decimal(18,2))) AS  average_Monthly_Repayment 
from dbo.property24
 where property_price >5000000
group by province
order by Average_Monthly_Repayment DESC;
