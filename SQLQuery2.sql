-- SECTION 1 COUNT AGGREGATIONS

-- question 1
select count (*)
from dbo.property24;

-- question 2
select province, count(*) AS numberofproperties
from dbo.property24
group by province;

-- question 3
select city, count(*) AS numberofproperties
from dbo.property24
group by city;

-- question 4
select count(*) AS numberofproperties
from dbo.property24
where bedrooms >=2;

-- question 5
select count(*) AS numberofproperties
from dbo.property24
where bathrooms >=2;

-- question 6
select count(*) AS numberofproperties
from dbo.property24
where parking >=2;

-- question 7
select count(*) numberofproperties
from dbo.property24
where PROPERTY_PRICE >=3000000;

select*
from dbo.property24;