-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select productName, categoryName
from Product as p 
    join category as c
    on p.CategoryId = c.id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT id, CompanyName
    FROM 'Order' as o
    JOIN Shipper as s
        ON o.ShipVia = s.id
    WHERE date(OrderDate) < date('2012-08-09');
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT ProductName, Quantity
    FROM OrderDetail as o
    JOIN Product as p
        ON o.ProductId = p.id
    WHERE o.OrderId = 10251;
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT id, CompanyName, LastName
    FROM 'Order' as o
    JOIN Customer as c
        ON o.CustomerId = c.id
    JOIN Employee as e
        ON o.EmployeeId = e.id;