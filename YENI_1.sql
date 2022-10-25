SELECT * FROM SYS.FILLAL;
select * from vnihad;

 create or replace view vnihad as select * from SYS.loancsv l inner join SYS.fillal c  on l.filial_id=c.fillal_id;
 
SET SERVEROUTPUT ON;
create or replace trigger vn_trigger 
INSTEAD of insert on vnihad 
for each row 
begin 
insert into SYS.loancsv (contract_id, act_date,first_name,last_name,amount,currency_id,insert_rate,filial_id,commission)
values(:new.contract_id, :new.act_date, :new.first_name, :new.last_name, :new.amount, :new.currency_id,: new.insert_rate, :new.filial_id, :new.commission);
insert into SYS.fillal (fillal_id,fillal_address)
values(:new.fillal_id, :new.fillal_address);
end;