use w3schooldata;
-- exists
-- ex 1
select c.customerName
from customers c
where exists (
    select 1
    from orders o
    where o.customerID = c.customerID
);
-- ex 2
select s.shipperName from shippers s
where
exists(select 1 from orders o where o.shipperID=s.shipperID);
-- ex 3 not
select s.shipperName from shippers s
where
exists(select 1 from customers c where c.customerName='Messi');
#=> result is None