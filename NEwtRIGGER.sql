select * from test_tcl where tcl_id=2;
create or replace view id5 as select * from test_tcl where tcl_id=2;
select * from id5;
insert into id5 values(2,'Nihad');
select * from test_tcl;
select * FROM FILLAL;
select * from loancsv;
create or replace view vnihad as select * from loancsv l inner join fillal c  on l.filial_id=c.fillal_id;
select * from vnihad;
create or replace trigger vn_trigger 
INSTEAD of insert  on vnihad 
for each row 
begin 
insert into loancsv (contract_id, act_date,first_name,last_name,amount,currency_id,insert_rate,filial_id,commission)
values(:new .contract_id, :new . act_date, :new .first_name, :new .last_name, :new. amount, :new. currency_id,: new. insert_rate, :new. filial_id, :new. commission);
insert into fillal (filla_id,fillal_address)
values(:new .fillal_id, :new . fillal_address);
end;
 

 grant SELECT  on FILLAL to NK;
 grant select on fillal to nihad2;
 
 alter session set "_ORACLE_SCRIPT"=TRUE;
 CREATE USER NK IDENTIFIED BY 123456;
 GRANT SYS TO NK;
 GRANT CREATE SESSION TO NK ;
 GRANT SYSDBA TO NK ;
 GRANT ALL PRIVILEGES TO NK;