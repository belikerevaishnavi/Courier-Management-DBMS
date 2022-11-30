--1 Find the names and phone numbers of delivery staff who have a shipment delivery 
--at current instance of time along with the delivery address.
select pd.fname, pd.minit, pd.lname, pd.phone_no, t.ship_id, o.to_addr
from personal_details as pd join delivery_staff as ds join tracking as t join orders as o
on ds.ds_id = t.ds_id and pd.id = ds.id and t.ship_id = o.ship_id;

--2 Find the names and phone numbers of derivers who have a shipment delivery at 
--current instance of time along with the vehicle no and to local depot name.
select pd.fname, pd.minit, pd.lname, pd.phone_no, t.vehicle_no, v.to_ld
from tracking as t join driver as d join vehicle as v join personal_details as pd
on t.vehicle_no = d.vehicle_no and t.vehicle_no = v.vehicle_no and d.id = pd.id;

--3  Find the names and phone numbers of users who have made 10 or more than 10 
--transactions.
select pd.fname, pd.minit, pd.lname, pd.phone_no, u.no_of_transactions
from user as u left outer join personal_details as pd
on u.id = pd.id
where u.no_of_transactions >= 10;

--4 Find the names, local depot and no of deliveries yet to be completed of all the 
--delivery staff
select pd.fname, pd.minit, pd.lname, ds.ld_id, ds.tot_pkgs-ds.delivered as to_be_delivered
from delivery_staff as ds left outer join personal_details as pd
on ds.id = pd.id;
