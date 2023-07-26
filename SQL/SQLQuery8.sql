select modelname,min(listprice), max(listprice) from products
where modelname = 'Bike Wash'
group by modelname

--- partition, sort, aggreagete function, 

select Productid
,[min] = min(listprice) over ()
from products

select Productid,Modelname
,[min] = min(listprice) over (partition by Modelname)
from products

select Productid,Modelname,
min(listprice) over (partition by Modelname order by Productid) as "MIN"
from products

select Modelname
,[min] = min(listprice) over (partition by Modelname )
,[max] = max(listprice) over (partition by Modelname ) 
,avg(listprice) over (partition by Modelname) as "Average"
from products

select row_number() over (order by sum(listprice)) as rownumber
,Modelname, sum(listprice)
from products
group by Modelname