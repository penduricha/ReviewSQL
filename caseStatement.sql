use w3schooldata;
select * from students;
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
