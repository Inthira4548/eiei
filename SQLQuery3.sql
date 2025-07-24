select ProductID  as รหัสสินค้า,ProductName as ชื่อสินค้า,UnitPrice as ราคาสินค้า,UnitsinStock as จำนวนสินค้า,UnitPrice*UnitsinStock as ScotkValue
from Products

select ProductID as รหัส,ProductName as สินค้า,UnitsinStock + UnitsOnOrder as จำนวนคงเหลือทั้งหมดม,ReorderLevel as จุดสั่งซื้อ 
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

select COUNT(*) as จำนวนสินค้า
from Products
Where UnitsInStock < 15

select count(*) as จำนวน from Employees 

select COUNT(*) from Customers 
where Country = 'thiland'

select count(*) from [order Details] where orderID = 10250

select count(*) from orders where shipCountry = 'Japan'

select min(UnitPrice) as ราคาต่ำสุด , max(UnitPrice) as ราคาสูงสุด, AVG(UnitPrice) as ราคาเฉลี่ย
from Products

select  AVG(UnitPrice) , max(UnitPrice),min(UnitPrice)
from [Order Details]
where ProductID = 5

select Country , COUNT(*) as [Num of Country]
from Customers
group BY Country


select Country , COUNT(*) as จำนวนลูกค้า
from Customers
group BY Country,city
order by [จำนวนลูกค้า]  desc 

select Country,city , COUNT(*) as จำนวนลูกค้า
from Customers
group BY Country,city

select ShipCountry,count (*) 
from Orders
group BY ShipCountry

select Country , COUNT(*) as จำนวนลูกค้า
from Customers
group BY Country
having COUNT(*) < 5
order by (จำนวนลูกค้า) desc 


select Country,City , COUNT(*) as จำนวนลูกค้า
from Customers
group BY Country,City
having COUNT(*) > 1


select ShipCountry , COUNT(*) as จำนวนใบสั่งซื้อ
from orders
group BY ShipCountry
having COUNT(*) >100


select ShipCountry,Count(*)
from orders
where YEAR(orderDate) = 1997
having COUNT(*) <5

select productID,sum(Quantity) as จำนวนที่ขายได้, max(UnitPrice) as ราคาสูงสุด, min(UnitPrice) as ราคาต่ำสุด,AVG(UnitPrice) as ราคาเฉลี่ย
from [Order Details]
group BY productID
order by ProductID

select orderID,sum(UnitPrice*Quantity*(1-Discount)) as TOtalPrice
from[Order Details]
order by orderID
