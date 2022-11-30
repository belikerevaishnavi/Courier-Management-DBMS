create table personal_details(id varchar(5) primary key, dob date,
age int, fname varchar(20), minit varchar(1), lname varchar(20),
phone_no  bigint);
desc personal_details;

create table user(user_id int primary key, id varchar(5), 
no_of_transactions int, address varchar(50),
foreign key (id) references personal_details (id));
desc user;

create table local_depot(ld_id varchar(5) primary key, 
ld_name varchar(20), phone_no int(10), address varchar(50));
desc local_depot;

create table office_staff(os_id int primary key, id varchar(5), 
position varchar(20), ld_id varchar(5), 
foreign key (id) references personal_details (id), 
foreign key (ld_id) references local_depot (ld_id));
desc office_staff;

create table delivery_staff(ds_id int primary key, id varchar(5), 
ld_id varchar(5), tot_pkgs int, delivered int,
salary int, foreign key (id) references personal_details (id), 
foreign key (ld_id) references local_depot (ld_id));
desc delivery_staff;

create table vehicle(vehicle_no varchar(15) primary key, 
from_ld varchar(5), to_ld varchar(5), status varchar(10),
distance int, cost int, 
foreign key (from_ld) references local_depot (ld_id), 
foreign key (to_ld) references local_depot (ld_id));
desc vehicle;

create table driver(driver_id int primary key, id varchar(5), 
year_of_exp int, salary int, vehicle_no varchar(15), 
foreign key (id) references personal_details (id), 
foreign key (vehicle_no) references vehicle (vehicle_no));
desc driver;

create table orders(user_id int, ship_id varchar(5) primary key,
weight double, tot_cost double, to_addr varchar(50),
from_ld varchar(5), to_ld varchar(5),
foreign key (from_ld) references local_depot (ld_id), 
foreign key (to_ld) references local_depot (ld_id),
foreign key (user_id) references user (user_id));
desc orders;

create table tracking(track_id varchar(5) primary key, 
ship_id varchar(5), vehicle_no varchar(15), current_ld varchar(5), 
ds_id int, constraint `odc` foreign key (ship_id) references orders (ship_id), 
foreign key (vehicle_no) references vehicle (vehicle_no), 
foreign key (current_ld) references local_depot (ld_id), 
foreign key (ds_id) references delivery_staff (ds_id));
desc tracking;