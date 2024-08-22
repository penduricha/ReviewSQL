use w3schooldata;
#rename table employee -> employees, shipper -> shippers
# RENAME TABLE employee TO employees;
# RENAME TABLE shipper TO shippers;
#SQL Query database
#1. SQL Select
#select all data customers
select * from customers;

#select the City column from the Customers table.
select c.city from customers c;

#select
select c.city from customers c where c.city='Berlin' and c.city='Berlin';

#Select all the different values from the Country column in the Customers table.
select distinct c.country from customers c;
/*
SELECT DISTINCT c.country FROM customers c;
This statement will return a list of unique countries from the customers table.
The DISTINCT keyword ensures that only one row is returned for each unique country value.
This is useful when you want to get a list of all
the distinct countries represented in the customers table, without any duplicates.
SELECT c.country FROM customers c;
This statement will return all the country values from the customers table, including any duplicates.
If there are multiple customers from the same country,
the country name will be returned multiple times, one for each customer.
This is useful when you want to get the full list of all country values,
including any duplicates, without any filtering or deduplication.
 */

#2. SQL Where
#Select all records where the City column has the value "Berlin".
select * from customers c where c.city='Berlin';

#Select all records where the CustomerID column has the value 32.
select * from customers c where c.customerID=32;

#Select all records from the Customers table,
#sort the result alphabetically by the column City increase
select * from customers c order by c.city;

#Select all records from the Customers table,
#sort the result alphabetically by the column City degrease
select * from customers c order by c.city desc;

# Select all records from the Customers table,
# sort the result alphabetically,
# first by the column Country, then, by the column City.
select * from customers c order by c.country,c.city;

#Select all records where the City column has
#the value 'Berlin' and the PostalCode column has the value '12209'.
select * from customers c where c.city='Berlin' and c.postalCode='12209';

#Note: we can't use and with same field
#ex this statement with 'and', same field => no data
select * from customers c where c.city='Berlin' and c.city='London';


#select all records where City is NOT "Berlin".
select * from customers c where not c.city='Berlin';

#null
# Select all records from the
# Customers where the PostalCode column is empty.
select * from customers c where c.postalCode is null;

#Function, agg
# select the record with the
# smallest value of the
# employeeID column in table orders.
select min(o.employeeID) from orders o;
#max, count, avg, sum same

#SQL Like
# Select all records where the
# value of the City column starts with the letter "a".
select * from customers c where c.city like 'a%';

# Select all records where the
# value of the City column
# ends with the letter "a".
select * from customers c where c.city like '%a';

# Select all records where the
# value of the City column contains the letter "a".
select * from customers c where c.city like '%a%';

# Select all records where the value of the City
# column starts with letter "a" and ends with the letter "b".
select * from customers c where c.city like 'a%b';

# Select all records where the value of
# the City column does NOT start with the letter "a".
select * from customers c where not c.city like '%a';

#SQL IN
# select all the records where
# Country is either "Norway" or "France".
select * from customers c where c.country in ('Norway','France');

# select all the records where Country
# is NOT "Norway" and NOT "France".
select * from customers c where c.country not in ('Norway','France');


#SQL BETWEEN
# select all the records where the value of
# the customerID column is between 10 and 20.
select * from customers c where c.customerID between 10 and 20;

#SQL BETWEEN
# select all the records where the value of
# the customerID column is not between 10 and 20.
select * from customers c where not c.customerID between 10 and 20;

#SQL GROUP BY
# List the number of customers in each country.
select count(customerID), c.country from customers c
group by c.country;

# List the number of customers in each country,
# ordered by the country with the most customers first.
select count(customerID), c.country from customers c
group by c.country order by count(customerID) desc;

#SQL JOIN
#left and right
# Insert the missing parts in the JOIN clause
# to join the two tables Orders and Customers,
# using the CustomerID field in both tables
# as the relationship between the two tables.
select * from orders o left join customers c
on o.customerID=c.customerID;

#that same this statement

select * from customers c  right join orders o
on c.customerID=o.customerID;

#full join
SELECT c.customerName, o.orderID
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
ORDER BY c.customerName;

#date time, add, drop column
select e.birthDate from employees e;
#creeate column date time
ALTER TABLE employees
ADD COLUMN dateOfBirthDateTime DATETIME;
#view
select * from employees e;
#update
UPDATE employees e
SET dateOfBirthDateTime = CAST(e.birthDate AS DATETIME);
#show column dateOfBirthDateTime
select e.dateOfBirthDateTime from employees e;
#get day month year
#day
SELECT DAY(e.dateOfBirthDateTime) AS day FROM employees e;
#month
SELECT MONTH(e.dateOfBirthDateTime) AS day FROM employees e;
#year
SELECT YEAR(e.dateOfBirthDateTime) AS day FROM employees e;
#drop column
ALTER TABLE employees
DROP COLUMN dateOfBirthDateTime;

#ex select join
select * from orders o;
select * from shippers s;
#description:
# 1 shipper - n orders,
# 1 orders - 1 shipper
# ex: select orders that
# shipper name is Cristiano Ronaldo
select * from orders o left join
shippers s ON o.shipperID = s.shipperID
where s.shipperName='Cristiano Ronaldo';

#that same

select * from shippers s right join
orders o on s.shipperID=o.shipperID
where s.shipperName='Cristiano Ronaldo';

#join 3 tables
# descriptions
select * from orders o;
select * from shippers s;
select * from employees e;
# ex: select orders that
# shipper name is Cristiano Ronaldo
# and employee first name and lastname:Laura, Callahan
select * from orders o
join
shippers s on o.shipperID = s.shipperID
join
employees e on o.employeeID=e.employeeID
where
s.shipperName='Cristiano Ronaldo'
and e.firstName='Laura'
and e.lastName='Callahan';

