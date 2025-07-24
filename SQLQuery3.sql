select ProductID  as �����Թ���,ProductName as �����Թ���,UnitPrice as �Ҥ��Թ���,UnitsinStock as �ӹǹ�Թ���,UnitPrice*UnitsinStock as ScotkValue
from Products

select ProductID as ����,ProductName as �Թ���,UnitsinStock + UnitsOnOrder as �ӹǹ������ͷ������,ReorderLevel as �ش��觫��� 
from Products 
where (UnitsinStock +  UnitsOnOrder) < ReorderLevel

select ProductID,ProductName,UnitPrice,ROUND(UnitPrice*0.07,2)as vat7
from Products

select EmployeeID,TitleOFCourtesy+firstName+SPACE(2)+LastName as [ Employee Name]
from  Employees

select *
from [order Details]
where orderID = 10250

select orderID,ProductID,UnitPrice,Quantity,Discount,UnitPrice * Quantity * (1-Discount) as NetPrice
from [order Details]
where orderID = 10250


select orderID,ProductID,UnitPrice,Quantity,Discount,
round(UnitPrice * Quantity * (1-Discount),2) as NetPrice
from [order Details]
where orderID = 10250

select COUNT(*) as �ӹǹ�Թ���
from Products
Where UnitsInStock < 15

select count(*) as �ӹǹ from Employees 

select COUNT(*) from Customers 
where Country = 'thiland'

select count(*) from [order Details] where orderID = 10250

select count(*) from orders where shipCountry = 'Japan'

select min(UnitPrice) as �Ҥҵ���ش , max(UnitPrice) as �Ҥ��٧�ش, AVG(UnitPrice) as �Ҥ������
from Products

select  AVG(UnitPrice) , max(UnitPrice),min(UnitPrice)
from [Order Details]
where ProductID = 5

select Country , COUNT(*) as [Num of Country]
from Customers
group BY Country


select Country , COUNT(*) as �ӹǹ�١���
from Customers
group BY Country,city
order by [�ӹǹ�١���]  desc 

select Country,city , COUNT(*) as �ӹǹ�١���
from Customers
group BY Country,city

select ShipCountry,count (*) 
from Orders
group BY ShipCountry

select Country , COUNT(*) as �ӹǹ�١���
from Customers
group BY Country
having COUNT(*) < 5
order by (�ӹǹ�١���) desc 


select Country,City , COUNT(*) as �ӹǹ�١���
from Customers
group BY Country,City
having COUNT(*) > 1


select ShipCountry , COUNT(*) as �ӹǹ���觫���
from orders
group BY ShipCountry
having COUNT(*) >100


select ShipCountry,Count(*)
from orders
where YEAR(orderDate) = 1997
having COUNT(*) <5

select productID,sum(Quantity) as �ӹǹ�������, max(UnitPrice) as �Ҥ��٧�ش, min(UnitPrice) as �Ҥҵ���ش,AVG(UnitPrice) as �Ҥ������
from [Order Details]
group BY productID
order by ProductID

select orderID,sum(UnitPrice*Quantity*(1-Discount)) as TOtalPrice
from[Order Details]
order by orderID
