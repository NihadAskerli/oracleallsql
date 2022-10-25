select * from order_items where order_id=( select *  from orders o where salesman_id=(select  employee_id from employees e where o.salesman_id=e.employee_id));

select e.employee_id  from orders o where salesman_id=(select  employee_id from employees e where o.salesman_id=e.employee_id);
with  n as(select * from orders)
with k as(select * from employees)
select * from k where exists( select * from n where n.salesman_id=k.employee_id);
select replace (email,'@example.com','@asoiu.edu.az') corf_email,e.* from employee e;
select * from loancsv;
select * from loancsv;
alter table loancsv add  Nihad int;
select (amount * interest_rate) as Nihad from loancsv;
select * from loancsv;
alter table loancsv add Yeninihad as (round(amount * commission /100));
select * from loancsv;
alter table loancsv add virtual_stun as (  
case 
when amount<30000 then  'bronze'
           when amount between 30000 and 75000  then 'cilver'
           when   amount between 75000 and 900000 then 'gold'
           when amount>900000 then 'politinum'
           end); 
           select * from loancsv;
        
           
