#1
delimiter $$
create function find_age(dob date)
	returns int
	deterministic
	begin
	declare age int;
	if NOW() > dob then
	set age = DATE_FORMAT(FROM_DAYS(DATEDIFF(NOW(),dob)),'%Y');
	else
	set age = -1;
	end if;
	return age;
	end;
	$$
delimiter ;

update personal_details set age = find_age(dob);
select * from personal_details;

#2
delimiter $$
create function find_cost(distance int)
	returns int
	deterministic
	begin
	declare cost int;
	set cost = 1000 + (0.2 * distance);
	return cost;
	end;
	$$
delimiter ;

update vehicle set cost = find_cost(distance);
select * from vehicle;

#3
delimiter $$
create procedure update_tot_cost(in weight double, in cost int, in sid varchar(5))
	begin
	update orders
	set tot_cost = (1.5 * weight) + cost
	where ship_id = sid;
	end;
	$$
delimiter ;
call update_tot_cost(25, 1384, 'SP001');
call update_tot_cost(15, 1069, 'SP002');
call update_tot_cost(30, 1431, 'SP003');
select * from orders;