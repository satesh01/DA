SELECT [CustomerID]
      ,[FirstName]
      ,[LastName]
      ,[FullName]
	  into customer_1994
  FROM [dbo].[customers] where customerid = 1994

  select * from [dbo].[customers]


  select * from orders order by customerid,employeeid desc

  select * from productsubcategories where subcategoryid = 31
   select * from productsubcategories where categoryid = 4

   select distinct DATEDIFF("d",orderdate,shipdate), count(*) from orders group by DATEDIFF("d",orderdate,shipdate)
   select count(distinct productid) from orders

   select a.ProductID, a.ModelName, b.subcategoryname from 
   products a,
   productsubcategories b
   where a.SubCategoryID = b.subcategoryid
   and a.SubCategoryID = 31

   select a.ProductID, a.ModelName, b.subcategoryname from 
   products a left outer join productsubcategories b
   on a.SubCategoryID = b.subcategoryid
    where a.SubCategoryID = 31


select salesorderid,employeeid,a.customerid,FullName from orders a inner join customers b
on (a.customerid = b.CustomerID)
where a.customerid = 1045

  --count
  select max(CustomerID) from customers

  insert into customers values(1994,'Catherine','Abel','test Customer')

  --filter
  Select firstname as FIRST_NAME, len(lastname) as "Length of Last name" , SUBSTRING(fullname,1,5) as Substr from customers
  where firstname ='Catherine'
  
  --AND CustomerID >= 100 and CustomerID <= 460
  group by  firstname, lastname 
  having count(*) >1


  select Customerid, firstname,
  case when [FirstName] like 'A%' then 'Alpha'
       when [FirstName] like 'B%' then 'Beta'
	   else 'Normal'
	   end as "Case_When",
  Fullname from customers
  where firstname like 'A%' or firstname like 'B%'

  --

  select *,
  case when ListPrice > 1000 then 'Elite_Model'
       when ListPrice between 10 and 100 then 'LowPrice_Model'
	   else 'Normal'
	   end as ModelPriceTag
    from [dbo].[products]

    select * from [products] a
	where exists (select ListPrice from [products] b where ListPrice > 1000 and a.productid = b.productid)

	product = 290+
	Order = 250 products

	----Left join 60919
	select count(distinct ord_prod), count(distinct prd_product)from 
	(select  a.Productid as ord_prod,b.productid prd_product,b.ProductName from orders a left outer join products b
	on (a.productid = b.productid)) c

	----right join 60964
	select count(distinct ord_prod), count(distinct prd_product)from 
	(select  a.Productid as ord_prod,b.productid prd_product,b.ProductName from orders a full outer join products b
	on (a.productid = b.productid)) c
