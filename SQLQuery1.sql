-- Question 1 
select* from dbo.property24;

-- question 2
select city, province, property_price from dbo.property24;

-- Question 3
select distinct province from dbo.property24;

-- QUestion 4
select*
from dbo.property24 
where province = 'Gauteng';

-- question 5
select*
from dbo.property24
where property_price <=1500000;

-- question 6
select*
from dbo.property24
where bedrooms >=3;

-- question 7
select*
from dbo.property24
where parking >=2;

-- question 8
select*
from dbo.property24
where Monthly_Repayment >25000;

-- question 9
select*
from dbo.property24
order by property_price DESC;

--QUESTION 10
select*
from dbo.property24
order by floor_size ASC;


-- QUESTION 12
select *
from dbo.property24
where province = 'western cape'
AND property_price <=3000000;

-- question 13
select*
from dbo.property24
where province = 'kwazulu-natal'
AND BEDROOMS >3

-- question 14
select*
from dbo.property24
where province IN ('limpopo','free state')
order by PROPERTY_PRICE;

-- QUESTION 15
select top 10*
from dbo.property24
order by PROPERTY_PRICE DESC;

-- question 16
select top 5*
from dbo.property24
order by PROPERTY_PRICE ASC;

-- QUESTION 17
select top 10*
from dbo.property24
order by FLOOR_SIZE DESC;

-- question 18
select top 1 
province
AVG ('property_price') AS averageprice
from dbo.property24
group by province
oder by averageprice DESC;

-- QUESTION 19
select city 
from dbo.property24
order by property_price ASC;

-- QUESTION 20
select *
from dbo.property24
where PROPERTY_PRICE >4000000
order by Min_Gross_Monthly_Income;






















