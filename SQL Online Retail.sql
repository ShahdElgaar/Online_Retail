select * from Online_retail

select * from Online_retail
where InvoiceNo Not like 'c%';

select * from Online_retail
where Quantity >0 and UnitPrice >0 and CustomerID is not NULL;

select SUM(Quantity*UnitPrice) as Total_Revenue from Online_retail
where Quantity >0 and UnitPrice >0;

select YEAR(InvoiceDate) as Year, MONTH(InvoiceDate) as Month, SUM(Quantity*UnitPrice) as Monthly_Revenue
from online_retail
where Quantity>0 and UnitPrice>0 
group by YEAR(InvoiceDate), MONTH(InvoiceDate)
order by Year, Month;

select Country, SUM(Quantity*UnitPrice) as Total_Revenue from Online_retail
where Quantity>0 and UnitPrice>0 
group by Country
order by Total_Revenue desc;

select Country, StockCode, Description, SUM(Quantity) as Total_Quantity from Online_retail
where Quantity>0
group by Country, StockCode, Description
order by Total_Quantity desc;

select Country, COUNT(Distinct InvoiceNo) as Number_Of_Orders from Online_retail
group by Country;

select Top 10 StockCode, Description, SUM(Quantity*UnitPrice) as Total_Revenue from Online_retail
where Quantity>0 and UnitPrice>0 
group by StockCode, Description
order by Total_Revenue desc;

select Top 10 StockCode, Description, SUM(Quantity) as Total_Quantity from Online_retail
where Quantity>0
group by StockCode, Description
order by Total_Quantity desc;

select Count(Distinct CustomerID) as Total_Customers from Online_retail

select Top 10 CustomerID, SUM(Quantity*UnitPrice) as Total_Revenue from Online_retail
where Quantity>0 and UnitPrice>0 
group by CustomerID
order by Total_Revenue desc;

select CustomerID, AVG(Quantity*UnitPrice) as Avg_Order from Online_retail
where Quantity>0 and UnitPrice>0 
group by CustomerID
order by Avg_Order desc;

select SUM(Quantity*UnitPrice) as Canceled_Revenue from online_retail
where InvoiceNo like 'c%';

select COUNT(Distinct InvoiceNo) as Canceled_Orders from online_retail
where InvoiceNo like 'c%';

select StockCode, Description, MIN(UnitPrice) as Min_Price , MAX(UnitPrice) as Max_Price, AVG(UnitPrice) as Avg_Price 
from online_retail
group by StockCode, Description
order by Avg_Price desc;