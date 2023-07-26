use database DBDemo1;

create database DBDemo1; 

drop database DBDemo1;

select * from customer

drop - table will be deleted
Delete - Only data in table will be deleted

INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

insert into customer(Customer_ID, Customer_name, Address, DOB) values( 1, 'Hari', 'PO BOX 442 Troy', '01-01-2020');
insert into customer(Customer_ID, Customer_name, Address) values( 5, 'NULL', NULL);
insert into customer(Customer_ID, Customer_name, Address) values( 6, 'blank', '');

Select ISNULL(Customer_name,1),ISnull(Address,1) from customer
Select  trim(Customer_name),isnull(trim(Address),1) from customer

insert into customer values( 3, '','','');
begin tran

insert into customer(Customer_ID, Customer_name, Address, DOB) values( 5, 'siva', 'PO BOX 1000 CA', '01-01-2012');

end
commit

rollback;

exec sp_rename 'customer.ADDRESS_TxtT' , 'ADDRESS_Txt';

select * from customer;









