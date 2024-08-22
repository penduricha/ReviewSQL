create database w3schoolData;
use w3schoolData;
# create table customers (
#     customerID int,
#     customerName varchar(50),
#     contactName varchar(50),
#     address varchar(50),
#     city varchar(50),
#     postalCode varchar(50),
#     country varchar(50),
#     primary key(customerID)
# );
#
# create table employee(
#    employeeID int,
#    lastName varchar(50),
#    firstName varchar(50),
#    birthDate varchar(20),
#    photo varchar(50),
#    notes varchar(800),
#    primary key (employeeID)
# );
# create table orders(orderID bigint,customerID int, 	employeeID int,	orderDate varchar(20),	shipperID int, primary key (orderID));
# #ShipperID ShipperName	Phone
# create table shipper(shipperID int, shipperName varchar(50),phone varchar(50),primary key (shipperID));
# # Alter foregin key
# -- Alter the corresponding tables
# ALTER TABLE orders
#     ADD FOREIGN KEY (customerID) REFERENCES customers(customerID);
#
# ALTER TABLE orders
#     ADD FOREIGN KEY (employeeID) REFERENCES employee(employeeID);
#
# ALTER TABLE orders
#     ADD FOREIGN KEY (shipperID) REFERENCES shipper(shipperID);
# #insert data
# drop database w3schooldata
-- auto_increment
create table polices (
    policeId int auto_increment primary key,
    name varchar(20),
    age int,
    salary float8
);
insert into polices (name, age, salary) values
('Tom',40,1000),
('Jerry',30,1000),
('Butch',45,2000);
select * from polices;