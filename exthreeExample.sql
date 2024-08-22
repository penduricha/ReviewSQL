-- DA HOC
/*
-Create database, create tables, add foreign key.
*/
use w3schooldata;
create table persons (
                         personId int,
                         personName varchar(10),
                         age int,
                         trainId int,
                         primary key (personId)
);
create table trains(
                       trainId int,
                       trainName varchar(10),
                       schedule varchar(20),
                       primary key (trainId)
);
-- alter
ALTER TABLE persons
    ADD FOREIGN KEY (trainId) REFERENCES trains(trainId);


-- view
select * from trains;
select * from persons;
/*
-Drop database, drop table.
*/
drop database w3schooldata;
drop table trains,persons;
alter table trains
drop column trainName;
/*
-Insert one, Insert many data to table.
*/
insert into trains (trainId, trainName, schedule)
values
    (1,'SPT2','SG->PT'),
    (2,'SPT1','PT->SG'),
    (3,'SPT3','PT->SG'),
    (4,'SPT4','SG->PT');

insert into persons(personId, personName, age, trainId) values
                                                            (1,'Tam',10,1),
                                                            (2,'Nam',10,1),
                                                            (3,'Tan',10,2),
                                                            (4,'Long',10,2),
                                                            (5,'Minh',10,3),
                                                            (6,'Kien',10,3),
                                                            (7,'Tho',10,4),
                                                            (8,'Kiet',10,4);
/*
-Update, delete where conditions (and/or/null/like)
*/
delete from shippers where shipperName='United Package';
update shippers s set
                      s.shipperName='Cristiano Ronaldo',
                      s.phone='(503) 555-2024' where shipperID=3;
delete from shippers;
/*
-Select column, select all, with:
-where (and/or/not/null/like)
*/
select * from customers c where c.city='Berlin';
select * from customers c where c.city='Berlin' and c.postalCode='12209';
select * from customers c where c.postalCode is null;
/*
- order by (asc/desc)
*/
select * from customers c order by (customerName);
select * from customers c order by (customerName) desc;
SELECT *
FROM customers c
ORDER BY c.customerName DESC, c.address DESC;
/*
-aggregate: count sum min max avg, functions string
*/
select min(o.employeeID) from orders o;
select max(o.employeeID) from orders o;
select avg(o.employeeID) from orders o;
/*
-join (inner, left, right, full, self)
*/
select * from orders o left join customers c
                                 on o.customerID=c.customerID;

-- #that same this statement

select * from customers c  right join orders o
                                      on c.customerID=o.customerID;

-- #full join
    SELECT c.customerName, o.orderID
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
ORDER BY c.customerName;
select * from orders o left join
              shippers s ON o.shipperID = s.shipperID
where s.shipperName='Cristiano Ronaldo';
-- #that same
select * from shippers s right join
              orders o on s.shipperID=o.shipperID
where s.shipperName='Cristiano Ronaldo';
/*
-group by
-head, tail, table
 */
select count(customerID), c.country from customers c
group by c.country;

-- # List the number of customers in each country,
-- # ordered by the country with the most customers first.
select count(customerID), c.country from customers c
group by c.country order by count(customerID) desc;

select count(customerID), c.country from customers c
group by c.city;
-- CHUA HOC

/*
 -Create functions - in progress
 -operator: if, when, begin - in progress
 */

 /*
 -Trigger - in progress
 */
-- insert
 CREATE TRIGGER tr_insert_person
     BEFORE INSERT ON persons
     FOR EACH ROW
 BEGIN
     IF NOT EXISTS (SELECT 1 FROM trains WHERE trainId = new.trainId) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: The train does not exist in the trains table.';
 END IF;
END;
-- if have train
INSERT INTO persons (personId, personName, age, trainId)
VALUES (10, 'Hung', 10, 100);
-- Delete
CREATE TRIGGER tr_delete_person
    after DELETE ON persons
    FOR EACH ROW
BEGIN
    IF NOT EXISTS (SELECT 1 FROM persons WHERE personId = OLD.personId) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: The person does not exist in the persons table.';
END IF;
END;
-- update
CREATE TRIGGER tr_update_person
    BEFORE UPDATE ON persons
    FOR EACH ROW
BEGIN
    IF NOT EXISTS (SELECT 1 FROM persons WHERE personId = OLD.personId) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: The person does not exist in the persons table.';
END IF;
END;
-- Create functions
-- create functions
-- m4=(m1+m2*2+m3*3)/6
create function calculate_m4(input_m1 FLOAT, input_m2 FLOAT, input_m3 FLOAT)
    returns float
    deterministic
begin
    declare result float;
    set result = (input_m1 + input_m2 *2 + input_m3 *3) / 6;
return result;
end;
-- gpa
create function calculate_gpa(input_m4 float)
    returns float
    deterministic
begin
    declare result float;
    -- Giả sử GPA được tính dựa trên thang điểm 4.0
    if input_m4 >= 9 then
        set result = 4.0;
    elseif input_m4 >= 8 then
        set result = 3.5;
    elseif input_m4 >= 7 then
        set result = 3.0;
    elseif input_m4 >= 6 then
        set result = 2.5;
    elseif input_m4 >= 5 then
        set result = 2.0;
    elseif input_m4 >= 4 then
        SET result = 1.5;
    elseif input_m4 >= 3 then
        set result = 1.0;
else
        set result = 0.0;
end if;
return result;
end;
-- rankStudent
create function calculate_rank(input_gpa float)
    returns varchar(10)
    deterministic
begin
    #or use case
    declare rankStudent varchar(10);
    if input_gpa >= 9.0 then
        set rankStudent = 'A+';
    elseif input_gpa >= 8.0 then
        set rankStudent = 'A';
    elseif input_gpa >= 7.0 then
        set rankStudent = 'B+';
    elseif input_gpa >= 6.0 then
        set rankStudent = 'B';
    elseif input_gpa >= 5.5 then
        set rankStudent = 'C+';
    elseif input_gpa >= 5.0 then
        set rankStudent = 'C';
else
        set rankStudent = 'D';
end if;
return rankStudent;
end;
-- procedure
-- ex 1
create procedure insertStudent(
    in p_studentID int,
    in p_gender nvarchar(5),
    in p_m1 float,
    in p_m2 float,
    in p_m3 float,
    in p_job nvarchar(5))
begin
    if exists(select 1 from students s where s.studentID=p_studentID) then
update students s set
                      s.gender=p_gender,
                      s.m1=p_m1,
                      s.m2=p_m2,
                      s.m3=p_m3,
                      s.job=p_job
where s.studentID=p_studentID;
else
        insert into students (studentID, gender, m1, m2, m3, job)
        values (p_studentID, p_gender, p_m1, p_m2, p_m3, p_job);
end if;
end;
-- ex 2
create procedure insertStudent(
    in p_studentID int,
    in p_gender nvarchar(5),
    in p_m1 float,
    in p_m2 float,
    in p_m3 float,
    in p_job nvarchar(5))
begin
    if exists(select 1 from students s where s.studentID=p_studentID) then
update students s set
                      s.gender=p_gender,
                      s.m1=p_m1,
                      s.m2=p_m2,
                      s.m3=p_m3,
                      s.job=p_job
where s.studentID=p_studentID;
else
        insert into students (studentID, gender, m1, m2, m3, job)
        values (p_studentID, p_gender, p_m1, p_m2, p_m3, p_job);
end if;
    -- insert data by function
update students s set m4 = calculate_m4(s.m1,s.m2,s.m3);
-- update
update students s set s.gpa=calculate_gpa(s.m4);
-- add column rank
update students s set s.rankStudent=calculate_rank(s.m4);
select * from students;
end;
-- ex 3
create procedure deleteStudentById(in p_studentID int)
begin
    if exists(select 1 from students s where s.studentID=p_studentID) then
delete from students where studentId=p_studentID;
else
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: Data is not exist in the table.';
end if;
select * from students;
end;
-- use call to execute procedure
call deleteStudentById(18);
call deleteStudentById(100);
-- validation function
# DELIMITER //
create function nameValidation (namePerson varchar(50))
    returns boolean
    deterministic
begin
    declare isValid boolean;
    -- Biểu thức chính quy kiểm tra tên chỉ chứa chữ cái và khoảng trắng
    set isValid = namePerson regexp '^[a-zA-Z\\s]+$';
return isValid;
end;
# DELIMITER ;
select nameValidation('Van An');
select nameValidation('GYUIT*&^*%');
-- ex2: validate age
create function ageValidation (agePerson int)
    returns boolean
    deterministic
begin
    declare isValid boolean;
    -- Biểu thức chính quy kiểm tra tên chỉ chứa chữ cái và khoảng trắng
    if(agePerson < 60 && agePerson >=20) then
        set isValid=1;
else
        set isValid=0;
end if;
return isValid;
end;
-- test
select ageValidation(10);
select ageValidation(30);
-- ex 3: validate date time
create function validateDateAfter30Days (inputDate date)
    returns boolean
    deterministic
begin
    declare isValid boolean;
    -- Kiểm tra xem ngày nhập vào có nằm trong khoảng 30 ngày sau ngày hiện tại hay không
    set isValid = (inputDate > CURDATE() and inputDate <= DATE_ADD(CURDATE(), interval 30 day));
return isValid;
end;
-- test
SELECT validateDateAfter30Days('2024-9-10');
-- Having
-- lists the number of customers in each country.
-- Only include countries with more than 5 customers:
select count(c.customerId) from customers c
group by c.country
having count(customerID) > 5;
# lists the number of customers in each country,
# sorted high to low
# (Only include countries with more than 5 customers):
select count(c.customerId), c.country
from customers c
group by c.country
having count(c.customerID) > 5
order by count(c.customerID) desc;
-- lists the employees that have registered more than 10 orders:
select e.lastName, count(o.orderId) as numberOfOrders
from (orders o inner join employees e on o.employeeID=e.employeeID)
group by e.lastName
having count(o.orderID) > 10;
-- willing Card
# Return all customers starting
# with "a", "b", "c", "d", "e" or "f":
select * from customers c where c.customerName like '[a-f]%';
# Return all customers
# that have "r" in the second position:
select * from customers c where c.customerName like '_r%';
-- Select all records where
-- the first letter of the City is an "a" or a "c" or an "s".
select * from customers c where c.customerName like '[acs]%';
-- exists
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
-- case
-- ex 1
# SELECT CustomerName, City, Country
# FROM Customers
# ORDER BY
#     (CASE
#          WHEN City IS NULL THEN Country
#          ELSE City
#         END);
select c.customerName,c.city,c.country
from customers c
order by
    (case when city is null then country else city end);
-- ex 2
SELECT
    s.studentID,
    s.m4,
    CASE
        WHEN m4 < 3 THEN 'F'
        WHEN m4 >= 3 AND m4 < 4 THEN 'C'
        WHEN m4 >= 4 AND m4 < 5 THEN 'B'
        WHEN m4 >= 5 AND m4 <= 6 THEN 'A'
        END AS rankStudentNew
FROM
    students s;
-- ex 3
SELECT
    s.studentID,
    s.m1,
    CASE
        when s.m1 >=5 then 'pass'
        when s.m1 <5 then 'fail'
        END AS pass
FROM
    students s;
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
