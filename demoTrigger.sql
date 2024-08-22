use w3schooldata;
-- show trigger
show triggers;
-- create data
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
-- we insert data persons that in train with trainId=5
insert into persons(personId, personName, age, trainId) values
 (5,'Tam',10,5);
#result is =>
# Cannot add or update a child row: a foreign key constraint
# fails (`w3schooldata`.`persons`,
# CONSTRAINT `persons_ibfk_1`
# FOREIGN KEY (`trainId`) REFERENCES `trains` (`trainId`))
# => we can create trigger to notify specially.
CREATE TRIGGER tr_insert_person
    BEFORE INSERT ON persons
    FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM persons WHERE personId = NEW.personId) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: The person already exists in the persons table.';
    ELSEIF NOT EXISTS (SELECT 1 FROM trains WHERE trainId = NEW.trainId) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: The train does not exist in the trains table.';
    END IF;
END;
-- show
show triggers;

delete from trains where trainId=5;
insert into trains (trainId, trainName, schedule)
values(5,'SE1','SG->HN');
-- trigger to delete trains
CREATE TRIGGER tr_delete_train
    BEFORE DELETE ON trains
    FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM persons WHERE trainId = OLD.trainId) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: Cannot delete the train, there are persons associated with this train.';
    END IF;
END;
delete from trains where trainId=4;
-- update
update persons set trainId=108 where personId=5;
#=> Cannot add or update a child row:
# a foreign key constraint
# fails (`w3schooldata`.
# `persons`, CONSTRAINT `persons_ibfk_1`
# FOREIGN KEY (`trainId`) REFERENCES `trains` (`trainId`))
-- trigger update
CREATE TRIGGER tr_update_person
    BEFORE update on persons
    FOR EACH ROW
BEGIN
    IF EXISTS (SELECT 1 FROM trains WHERE trainId = OLD.trainId) THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Error: Cannot update, there are not train.';
    END IF;
END;
show triggers;