use w3schooldata
-- 1 sql delete
-- delete all data in table shipper
delete from shippers;
-- delete data that shipperName is United Package
-- Note: shippers is mapped by orders so can't delete
delete from shippers where shipperName='United Package';
#after delete
select * from shippers;
# insert again
insert into shippers(shipperID, shipperName, phone)
values (3,'United Package','(503) 555-3199');
-- 2 sql update
-- update one where conditions
update shippers s set
s.shipperName='Cristiano Ronaldo',
s.phone='(503) 555-2024' where shipperID=3;
-- view after updated
select * from shippers;
