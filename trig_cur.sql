--Trigger to update tracking table when a new order is inserted
delimiter $$
create trigger up_order
after insert on orders for each row
begin
insert into `tracking`(`track_id`,`ship_id`,`vehicle_no`,`current_ld`,`ds_id`)values
(concat("TR",RIGHT(new.ship_id,3)), new.ship_id, NULL, new.from_ld,NULL);
end;
$$
delimiter ;
