select * from employees


Common Table Expression

with CTE as(
select employeeid, managerid, Fullname, Jobtitle
	from employees
	where managerid is not null
union all 
select e.employeeid, e.managerid, e.Fullname, e.Jobtitle
from employees as e
join cte on e.managerid = cte.employeeid
)

select cte.employeeid, emp.fullname, cte.managerid, cte.Fullname, cte.Jobtitle
	from CTE
	left outer join employees emp
	on emp.employeeid = cte.employeeid
	

	select distinct customerid from orders

	select * into cust925_1257 from orders where customerid in (925,1257)

	select * from Customer_1257
	select * from Customer_925
	--union
	select * from cust925_1257
	union
	select * from Customer_925

	--union all
	select * from cust925_1257
	union all
	select * from Customer_925

	--except
	select * from cust925_1257 --137  31 +106
	except --minus
	select * from Customer_925 -- 31 

	--insrtect
    select * from cust925_1257 --137  31 +106
	intersect
	select * from Customer_925 -- 31

