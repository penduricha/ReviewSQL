use w3schooldata;
# Return all customers starting
# with "a", "b", "c", "d", "e" or "f":
select * from customers c where c.customerName like '[a-f]%';
# Return all customers
# that have "r" in the second position:
select * from customers c where c.customerName like '_r%';
-- Select all records where
-- the first letter of the City is an "a" or a "c" or an "s".
select * from customers c where c.customerName like '[acs]%';
