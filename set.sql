#1
select pd.fname, pd.minit, pd.lname, pd.id
from personal_details as pd join delivery_staff as ds join tracking as t
on ds.ds_id = t.ds_id and pd.id = ds.id
union
select pd.fname, pd.minit, pd.lname, pd.id
from tracking as t join driver as d join personal_details as pd
on t.vehicle_no = d.vehicle_no and d.id = pd.id
union
select pd.fname, pd.minit, pd.lname, pd.id
from tracking as t join office_staff as os join personal_details as pd
on t.current_ld = os.ld_id and os.id = pd.id;

#2
select vehicle_no from vehicle
except
select v.vehicle_no
from vehicle as v join orders as o
on v.from_ld = o.from_ld and v.to_ld = o.to_ld;

#3
select from_ld as ld_id from orders
intersect
select to_ld from orders;

#4
select pd.fname, pd.minit, pd.lname, pd.id
from personal_details as pd join driver as d
on pd.id = d.id
where d.salary >=15000
union
select pd.fname, pd.minit, pd.lname, pd.id
from personal_details as pd join delivery_staff as ds
on pd.id = ds.id
where ds.salary >=15000;
