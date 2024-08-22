use w3schooldata;
-- create table students
create table students
(
    studentID int,
    gender    nvarchar(5),
    m1        float8,
    m2        float8,
    m3        float8,
    job       nvarchar(5),
    primary key (studentID)
);
-- insert data
insert into students (studentID, gender, m1, m2, m3, job)
values (0, 'F', 3.25, 3.25, 4.50, 'No'),
       (1, 'M', 6.00, 4.00, 3.50, 'Yes'),
       (2, 'M', 5.00, 6.75, 4.00, 'No'),
       (3, 'M', 4.25, 4.25, 5.25, 'No'),
       (4, 'M', 4.25, 4.50, 5.00, 'No'),
       (5, 'M', 1.50, 4.00, 6.00, 'No'),
       (6, 'F', 6.50, 6.75, 5.25, 'Yes'),
       (7, 'F', 3.75, 4.50, 4.25, 'Yes'),
       (8, 'F', 3.50, 3.50, 6.75, 'Yes'),
       (9, 'F', 4.00, 4.75, 5.50, 'Yes'),
       (10, 'F', 3.00, 4.00, 5.50, 'No'),
       (11, 'M', 6.75, 6.50, 4.25, 'Yes'),
       (12, 'F', 2.00, 4.50, 5.00, 'No'),
       (13, 'F', 2.50, 2.75, 5.50, 'No'),
       (14, 'F', 3.50, 4.50, 6.50, 'No'),
       (15, 'M', 3.75, 3.00, 6.50, 'Yes'),
       (16, 'F', 3.50, 4.00, 3.50, 'Yes'),
       (17, 'M', 4.25, 4.50, 5.00, 'Yes'),
       (18, 'M', 3.25, 4.75, 3.50, 'No'),
       (19, 'F', 3.50, 4.00, 4.00, 'Yes');
select *
from students;
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
-- show
show function status where Db='w3schooldata';
-- drop
drop function calculate_gpa;
drop function calculate_m4;
drop function calculate_rank;
-- call functions
-- add column m4
alter table students add m4 float;
-- insert data by function
update students s set m4 = calculate_m4(s.m1,s.m2,s.m3);
select * from students;
-- add column gpa
alter table students add gpa float;
-- update
update students s set s.gpa=calculate_gpa(s.m4);
select * from students;
-- add column rank
alter table students add rankStudent nvarchar(10);
update students s set s.rankStudent=calculate_rank(s.m4);
-- procedure
-- same void
-- insert become update if PK exist
-- Procedure
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

-- show procedure
show procedure status where Db='w3schooldata';
-- drop
drop procedure insertStudent;
-- test procedure insertStudent
call insertStudent(20,'M',10,10,10,'Yes');
select * from students;
-- use procedure with functions and flow
-- flow insert/update -> select
# delete from students where studentID=20;
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
-- test new procedure
call insertStudent(2,'M',0,0,0,'No');
-- reset
drop table students;
drop function calculate_gpa;
drop function calculate_m4;
drop function calculate_rank;
drop procedure insertStudent;
-- procedure delete
drop procedure deleteStudentById;
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

call deleteStudentById(18);
call deleteStudentById(100);

# create function square(x int)
#     returns int
#     deterministic
# begin
#     return x * x;
# end;
# select square(5); -- Returns 25
#
# create function divide(a float, b float)
#     returns int
#     deterministic
# begin
#     if (b=0) then
#         return 999999999;
#     else
#         return a/b;
#     end if;
# end;
# select divide(2,0);
# drop function  divide;
# drop function  square;