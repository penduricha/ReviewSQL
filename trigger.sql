use w3schooldata;
-- trigger and operator: if, begin, end
-- View data
select * from customers c;
select * from employees e;
select * from orders o;
select * from shippers s;
#we can create trigger when query have exception to notify
#ex we add 1 shipper and
# after that we delete 1 shipper
-- code trigger
# create trigger trigger_insert_shipper
#     before insert on shippers
#     for each row
# begin
#     if not exists(select 1 from shippers where shipperID=new.shipperID) then
#         insert into shippers(shipperID, shipperName, phone)
#         values(new.shipperID,new.shipperName,new.phone);
#     end if;
# end;
-- show
show triggers;
-- drop
drop trigger tr_insert_person;
-- create 2 tables
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
-- view
select * from trains;
select * from persons;
-- trigger insert
CREATE TRIGGER tr_insert_person
    BEFORE INSERT ON persons
    FOR EACH ROW
BEGIN
    IF NOT EXISTS (SELECT 1 FROM trains WHERE trainId = NEW.trainId) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: The train does not exist in the trains table.';
    END IF;
    IF (SELECT COUNT(*) FROM persons WHERE personId = NEW.personId) > 0 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: The personId already exists in the persons table.';
    END IF;
END;
-- insert
-- if have train
INSERT INTO persons (personId, personName, age, trainId)
VALUES (10, 'Hung', 10, 100);
-- if have not train
INSERT INTO persons (personId, personName, age, trainId)
VALUES (10, 'Nga', 10, 5);
--
INSERT INTO persons (personId, personName, age, trainId)
VALUES (9, 'Tan', 10, 4);
#=> message is Error: The train does not exist in the trains table.
-- trigger delete
CREATE TRIGGER tr_delete_person
    after DELETE ON persons
    FOR EACH ROW
BEGIN
    IF NOT EXISTS (SELECT 1 FROM persons WHERE personId = OLD.personId) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: The person does not exist in the persons table.';
    END IF;
END;
-- drop
drop trigger tr_delete_person;
drop trigger tr_insert_person;
-- trigger update
CREATE TRIGGER tr_update_person
    BEFORE UPDATE ON persons
    FOR EACH ROW
BEGIN
    IF NOT EXISTS (SELECT 1 FROM persons WHERE personId = OLD.personId) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: The person does not exist in the persons table.';
    END IF;
END;
-- test trigger delete
-- if have
delete from persons where personId=9;
-- if have not
delete from persons where personId=99;
-- trigger update
drop trigger tr_update_person;
CREATE TRIGGER tr_update_person
    BEFORE UPDATE ON persons
    FOR EACH ROW
BEGIN
    IF NOT EXISTS (SELECT 1 FROM persons WHERE personId = OLD.personId) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: The person does not exist in the persons table.';
    END IF;
END;
-- we use update
-- if have
update persons set personName='Jang', age=15, trainId=4 where personId=8;
-- if have not
update persons set personName='Jang', age=15, trainId=44 where personId=84;
-- delete
delete from trains where trainId=4;
-- trigger delete
CREATE TRIGGER tr_delete_train
    before delete on persons
    FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM persons WHERE trainId = OLD.trainId) THEN
         SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: The train have person information.';
    END IF;
END;
drop trigger tr_delete_train;
# show databases
# ALTER TABLE persons
# DROP FOREIGN KEY persons_ibfk_1 ;
show triggers;
drop trigger tr_insert_person;
-- test trigger insert
insert into persons(personId, personName, age, trainId)
values (1,'Duc',10,4);
#=> trigger notify Error:
# The personId already
# exists in the persons table.
-- trigger select
