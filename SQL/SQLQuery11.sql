SELECT [CustomerID]
      ,[FirstName]
      ,[LastName]
      ,[FullName]
  FROM [ADworks_Raw].[dbo].[customers]
  where customerid=1481

 

  --Create index


  create index Cust_ID_IDX on dbo.customers (customerid);

    create clustered index Cust_ID_IDX1 on dbo.customers (customerid);

 create index Cust_ID_IDX2 on dbo.customers (fullname);

 alter table customers
 add  CONSTRAINT PK_Cust PRIMARY KEY (customerid);


 alter table products
 add CONSTRAINT PK_Product PRIMARY KEY(Productid); 
 
 alter table products
 drop CONSTRAINT PK_Product;

 select * from products
  where productid = 710

 select * from products
 where productid = 713
 



	 