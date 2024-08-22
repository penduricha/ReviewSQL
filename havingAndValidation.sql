use w3schooldata;
-- ex1: validate name
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
-- drop
drop function nameValidation;
drop function ageValidation;
drop function validateDateAfter30Days;
-- having
select * from customers;
select * from orders;
-- ex 1
-- Giả sử bạn có một bảng Orders và
-- bạn muốn tìm các nhân viên đã xử lý hơn 10 đơn hàng:
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
         INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.LastName
HAVING COUNT(Orders.OrderID) > 10;
# GROUP BY: Nhóm các đơn hàng theo LastName của nhân viên.
# COUNT(Orders.OrderID): Đếm số lượng đơn hàng mà mỗi nhân viên đã xử lý.
# HAVING COUNT(Orders.OrderID) > 10: Chỉ chọn những nhóm có số lượng đơn hàng lớn hơn 101.
-- Giả sử bạn có một bảng Customers
-- và bạn muốn tìm các quốc gia có hơn 5 khách hàng:
SELECT Country, COUNT(CustomerID) AS NumberOfCustomers
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;