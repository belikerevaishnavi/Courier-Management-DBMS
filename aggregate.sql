#1
select from_ld, avg(distance)
from vehicle
group by from_ld;

#2
select @oldest:=max(age)
from personal_details
where id not like 'US%';
select * from personal_details 
where age = @oldest and id not like 'US%';

#3
select count(*)
from driver
where salary < 10000;

#4
select count(*)
from vehicle
where distance > 2000;