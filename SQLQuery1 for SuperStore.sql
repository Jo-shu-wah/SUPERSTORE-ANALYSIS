Use Tobi
go
---Select * from [Sample - Superstore Jay CSV]
---1) List the Product that generates the most sales 
---Select Category, SUM(Total_Sales) AS TotalSales from [Sample - Superstore Jay CSV]
---Group by Category
---Order by TotalSales desc

---2) List the Top 5 States that generated the most profit
---Select Top 5 State, SUM(Total_Sales) AS TotalSales, SUM(Profit) AS TotalProfit from [Sample - Superstore Jay CSV]
---Group by State
---Order by TotalProfit desc

---3)Which products did not make profit
---Select Product_ID, Product_Name, Sum(Profit) AS Loss from [Sample - Superstore Jay CSV]
---Group by Product_ID, Product_Name
----Having Sum(Profit) < 0

----4) List the Products ordered on 11/8/2016
---Select count(product_id) AS TotalOrdered from [Sample - Superstore Jay CSV]
---where Order_Date = '11/8/2016'

---5) List the Customers that live in Texas
---Select Customer_name, state from [Sample - Superstore Jay CSV]
---where state = 'Texas'

---6) Display the total number of customers
---select count(customer_id) AS TotalCustomers from [Sample - Superstore Jay CSV]

----7) Display the customers that ordered furniture
---Select customer_id, customer_name, category from [Sample - Superstore Jay CSV]
---where Category = 'furniture'

---8) Total number of sales made in Philadelphia
---select city, count(Total_Sales) AS TotalSales from [Sample - Superstore Jay CSV]
---where city = 'philadelphia'
--group by city
---Order by TotalSales

----9) Display the ship mode of product delivered to Florida
---Select	Product_id, Product_Name,State, Ship_Mode from [Sample - Superstore Jay CSV]
---where state = 'Florida'

 ---10) Which region made the highest Sales
 ---Select TOP 1 Region, Sum(Total_Sales) TotalRegionSales from [Sample - Superstore Jay CSV]
 ---Group by Region
 ---order by TotalRegionSales desc