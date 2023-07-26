
GO  
CREATE PROCEDURE Sp_getCustomer   
    @LastName nvarchar(50),   
    @FirstName nvarchar(50)   
AS   

    SET NOCOUNT ON;  
    SELECT FirstName, LastName, Fullname  
    FROM dbo.customers 
    WHERE FirstName = @FirstName AND LastName = @LastName;  
GO


exec [dbo].[Sp_getCustomer] @lastname = 'Adams', @firstname = 'Jay';


---with CTE

with Prod_CTE as (
Select ProductID,ModelName,StandardCost from products
),
Order_CTE as(
select Productid, CustomerID from Orders
where customerID = 1045
)
select Modelname,customerid, sum(standardcost) from Prod_CTE a inner join Order_CTE b
on a.productid = b.productid
group by Modelname,customerid


union
union all
except
intersect













select * from customers