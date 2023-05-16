INSERT INTO 
Customers (CustomerID, FirstName, LastName, City, State, Zip)
VALUES 
((Select MAX(CustomerID)+1 from Customers),
 'Chris',
 'Kringle', 
 'Henryville', 
 'IN', 
 '47126');
 
INSERT INTO 
Sales (SaleID, ProductID, CustomerID, SalePrice, SaleDate)
VALUES 
((SELECT MAX(SaleID)+1 from Sales),
3, 
(Select MAX(CustomerID) from Customers),
cast(205 as MONEY),
 '2005-12-31');
 
 select * from customers order by customerID;

