insert into `local_depot`(`ld_id`,`ld_name`,`phone_no`,`address`)values
('DEL', 'Delhi', 25567184, 'A Block, Janakpuri, Delhi'),
('MUM', 'Mumbai', 24301285, 'C Block, Andheri, Mumbai'),
('CHE', 'Chennai', 26701849, 'D Block, Adyar, Chennai'),
('KOL', 'Kolkata', 26122231, 'S Block, Barabazar, Kolkata'),
('BEN', 'Bengaluru', 26721123, 'A Block, Indranagar, Bengaluru');
select * from local_depot;

insert into `personal_details`(`id`,`dob`,`fname`,`minit`,`lname`,`phone_no`)values
('DR001', STR_TO_DATE('24-11-1997', '%d-%m-%Y'), 'Sanath', 'M','Kumar','8776723412'),
('DR002', STR_TO_DATE('15-10-1987', '%d-%m-%Y'), 'Akash', 'G','Gupta','9367855628'),
('DR003', STR_TO_DATE('09-09-1978', '%d-%m-%Y'), 'Devendra', 'S','Nath','9378956795'),
('DR004', STR_TO_DATE('30-04-2000', '%d-%m-%Y'), 'Partha', 'T','Sarathi','8378956782'),
('DR005', STR_TO_DATE('06-08-2001', '%d-%m-%Y'), 'Miles', 'Y','Colin','8499586884'),
('DR006', STR_TO_DATE('01-04-1967', '%d-%m-%Y'), 'Chandra', 'P','Babu','8207568479'),
('DR007', STR_TO_DATE('05-03-1988', '%d-%m-%Y'), 'Kalpen', 'F','Dewan','9480875762'),
('DR008', STR_TO_DATE('15-06-1998', '%d-%m-%Y'), 'Nitin', 'J','Dhillon','7874478992'),
('DR009', STR_TO_DATE('27-09-1974', '%d-%m-%Y'), 'Zian', 'O','Chadha','7986436663'),
('DR010', STR_TO_DATE('17-05-1992', '%d-%m-%Y'), 'Sayan', 'S','Kohli','9673875268'),
('DR011', STR_TO_DATE('14-10-1960', '%d-%m-%Y'), 'Ravi', 'T','Mani','8163900262'),
('DR012', STR_TO_DATE('03-01-1978', '%d-%m-%Y'), 'Eshaan', 'M','Laghari','9637671900'),
('DR013', STR_TO_DATE('30-01-1990', '%d-%m-%Y'), 'Charan', 'L','Das','9452713875'),
('DR014', STR_TO_DATE('13-05-1982', '%d-%m-%Y'), 'Jaiden', 'T','Ray','8562310087'),
('DR015', STR_TO_DATE('11-09-1991', '%d-%m-%Y'), 'Kiran', 'V','Dalal','7468087942'),
('DR016', STR_TO_DATE('08-10-1976', '%d-%m-%Y'), 'Kavish', 'I','Ganguly','9065656832'),
('DR017', STR_TO_DATE('09-03-1985', '%d-%m-%Y'), 'Abdul', 'P','Mallick','7956434246'),
('DR018', STR_TO_DATE('06-07-1995', '%d-%m-%Y'), 'Daksh', 'W','Malhotra','8776758990'),
('DR019', STR_TO_DATE('28-08-1988', '%d-%m-%Y'), 'Veer', 'H','Mukherjee','9167243352'),
('DR020', STR_TO_DATE('12-11-1989', '%d-%m-%Y'), 'Anil', 'I','Bakshi','9087676546'),
('OS001', STR_TO_DATE('22-02-1993', '%d-%m-%Y'), 'Govind', 'P','Singh','8172948247'),
('OS002', STR_TO_DATE('20-04-1992', '%d-%m-%Y'), 'Sahil', 'B','Kapadia','7932804773'),
('OS003', STR_TO_DATE('07-02-1990', '%d-%m-%Y'), 'Rajveer', 'P','Bajwa','9054328858'),
('OS004', STR_TO_DATE('12-12-1979', '%d-%m-%Y'), 'Gagan', 'U','Bhatt','9875721999'),
('OS005', STR_TO_DATE('21-09-1980', '%d-%m-%Y'), 'Niyam', 'P','Khanna','7987356577'),
('DL001', STR_TO_DATE('26-12-1970', '%d-%m-%Y'), 'Rakesh', 'Q','Puri','8237038172'),
('DL002', STR_TO_DATE('02-04-1992', '%d-%m-%Y'), 'Sai', 'K','Gokhale','8031899301'),
('DL003', STR_TO_DATE('31-07-1999', '%d-%m-%Y'), 'Manav', 'U','Deshmukh','8764712476'),
('DL004', STR_TO_DATE('19-06-2000', '%d-%m-%Y'), 'Babu', 'A','Apte','9017465323'),
('DL005', STR_TO_DATE('25-11-2001', '%d-%m-%Y'), 'Rishi', 'G','Mannan','9475210381'),
('US001', STR_TO_DATE('17-04-2004', '%d-%m-%Y'), 'Kashvi', 'P','Varma','9635871890'),
('US002', STR_TO_DATE('09-10-2001', '%d-%m-%Y'), 'Ishank', 'N','Dewan','8549620789'),
('US003', STR_TO_DATE('30-08-1988', '%d-%m-%Y'), 'Kalindi', 'N','Kaur','9765358866'),
('US004', STR_TO_DATE('28-06-1990', '%d-%m-%Y'), 'Tanaya', 'V','Batra','7089623511'),
('US005', STR_TO_DATE('10-12-1970', '%d-%m-%Y'), 'Anjali', 'M','Naidu','8532980861');
select * from personal_details;


insert into `vehicle`(`vehicle_no`,`from_ld`,`to_ld`,`status`,`distance`)values
('VEL001','DEL','MUM','From',1411),
('VEL002','DEL','CHE','From',2194),
('VEL003','DEL','KOL','From',1467),
('VEL004','DEL','BEN','From',2155),
('VEL005','MUM','DEL','From',1411),
('VEL006','MUM','CHE','From',1337),
('VEL007','MUM','KOL','From',1922),
('VEL008','MUM','BEN','From',985),
('VEL009','CHE','DEL','From',2194),
('VEL010','CHE','MUM','From',1337),
('VEL011','CHE','KOL','From',1664),
('VEL012','CHE','BEN','From',346),
('VEL013','KOL','DEL','From',1467),
('VEL014','KOL','MUM','From',1922),
('VEL015','KOL','CHE','From',1664),
('VEL016','KOL','BEN','From',1871),
('VEL017','BEN','DEL','From',2155),
('VEL018','BEN','MUM','From',985),
('VEL019','BEN','CHE','From',346),
('VEL020','BEN','KOL','From',1871);
select * from vehicle;

insert into `driver`(`driver_id`,`id`,`year_of_exp`,`salary`,`vehicle_no`)values
(1,'DR001',3,7000,'VEL001'),
(2,'DR002',13,13000,'VEL002'),
(3,'DR003',22,15000,'VEL003'),
(4,'DR004',2,6000,'VEL004'),
(5,'DR005',1,6000,'VEL005'),
(6,'DR006',33,15000,'VEL006'),
(7,'DR007',12,12000,'VEL007'),
(8,'DR008',22,15000,'VEL008'),
(9,'DR009',2,6000,'VEL009'),
(10,'DR010',26,15000,'VEL010'),
(11,'DR011',8,8000,'VEL011'),
(12,'DR012',22,15000,'VEL012'),
(13,'DR013',10,10000,'VEL013'),
(14,'DR014',18,15000,'VEL014'),
(15,'DR015',9,8000,'VEL015'),
(16,'DR016',24,15000,'VEL016'),
(17,'DR017',15,12000,'VEL017'),
(18,'DR018',5,7000,'VEL018'),
(19,'DR019',12,12000,'VEL019'),
(20,'DR020',11,12000,'VEL020');
select * from driver;

insert into `office_staff`(`os_id`,`id`,`position`,`ld_id`)values
(1,'OS001','Manager','DEL'),
(2,'OS002','Manager','MUM'),
(3,'OS003','Manager','CHE'),
(4,'OS004','Manager','KOL'),
(5,'OS005','Manager','BEN');
select * from office_staff;

insert into `delivery_staff`(`ds_id`,`id`,`ld_id`,`tot_pkgs`,`delivered`,`salary`)values
(1,'DL001','DEL',45,20,15000),
(2,'DL002','MUM',50,27,18000),
(3,'DL003','CHE',30,14,12000),
(4,'DL004','KOL',25,7,10000),
(5,'DL005','BEN',60,30,20000);
select * from delivery_staff;

insert into `user`(`user_id`,`id`,`no_of_transactions`)values
(1,'US001',12),
(2,'US002',9),
(3,'US003',3),
(4,'US004',10),
(5,'US005',7);
select * from user;

insert into `orders`(`user_id`,`ship_id`,`weight`,`to_addr`,`from_ld`,`to_ld`)values
(3,'SP001',25,'A Block, Andheri, Mumbai','KOL','MUM'),
(2,'SP002',15,'D Block, Jaynagar, Bengaluru','CHE','BEN'),
(4,'SP003',30,'F Block, Raj path, Delhi','BEN','DEL');
select * from orders;

Alter table `tracking` drop foreign key `odc`;
alter table `tracking` add constraint `odct` foreign key (ship_id) references orders (ship_id) on DELETE CASCADE;

insert into `tracking`(`track_id`,`ship_id`,`vehicle_no`,`current_ld`,`ds_id`)values
('TS001','SP001','VEL014',NULL,NULL),
('TS002','SP002',NULL,'BEN',NULL),
('TS003','SP003',NULL,NULL,5);
select * from tracking;