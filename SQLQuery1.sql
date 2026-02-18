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
