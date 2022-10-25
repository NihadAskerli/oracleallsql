select l.*,c.* from  loancsv  l inner join  fillal c on l.filial_id=c.fillal_id where filial_id=59;
select * from emp e inner join emp n on n.sal>e.sal where e.empno=n.mgr;
select e.ename from emp e inner join emp n on n.sal>e.sal where e.empno=n.mgr; 
select * from emp;
select * from emp;
select * from loancsv;
select * from currency_n;
select * from fillal;
select l.*,c.* from  loancsv  l inner join  currency_n c on l.currency_id=c.currency_id ;
--select * from loancsv l , currency_n c where l.currency_id=c.currency_id;  inner join 
select l.*,c.* from  loancsv  l inner join  currency_n c on l.currency_id=c.currency_id ;
select * from loancsv l inner join fillal c using(filial_id);
select * from currency_n;
select * from loancsv where not exists (select * from currency c where l.loancsv.currency_id=);
select * from currency_n c where exists (select * from  loancsv l where c.currency_id = l.currency_id);
select * from emp; 
select * from emp  a inner join  emp n  on a.empno=n.mgr where a.sal>n.sal ;
select * from products;
select * from customers;
select * from orders;
select distinct c.name from customers c inner join orders o on o.customer_id==c.customer_id ;
select * from customers c where not  exists(select * from orders o where c.customer_id=o.customer_id );

-- hansi musteri hec bir sifaris yoxdur
select * from order_items;
select order_id, sum(unit_price*quantity) from order_items group by order_id;
select * from products;
select * from warehouses;
select * from locations;
select * from inventories;
select quatity*(select ) from products p where p.product_id=o.product_id;
select * from orders;

----------------------------------------------------------


select * from loancsv;





select * from (select currency_id,amount,filial_id from loancsv)
Pivot( sum(amount) for currency_id in(11,12,13,14));
--create private temporary table ora$$ptt_salam (
--t_id number,
--t_name nvarchar2(30)
--)on commit preserve rows;
alter session set 

