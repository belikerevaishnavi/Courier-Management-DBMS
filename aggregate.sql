--1 Find the average distance from one local depot to all the other local depots.
select from_ld, avg(distance)
from vehicle
group by from_ld;

--2 Find the oldest employee employed by the courier management. 
select @oldest:=max(age)
from personal_details
where id not like 'US%';
select * from personal_details 
where age = @oldest and id not like 'US%';

--3 Find the number of drivers whose salary is less than 10000
select count(*)
from driver
where salary < 10000;

--4 Find the number of vehicles that have to travel more than 2000 km.
select count(*)
from vehicle
where distance > 2000;
