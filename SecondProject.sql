--create table Nihad2(
--id number(30),
--Constraint Nihad_id primary key(id)
--);
--drop table Nihad;
--select * from user_constraints;
--SELECT constraint_name From user_constraints where table_name='NIHAD2'; 
--CREATE TABLE PERSON(
--id number(30) constraint id_i primary key;
--salam necesen Nihad 

 create table currency(
 C_id int primary key,
 currency_name varchar2(20)
 );
insert into loanContract values (1,'NIhad','Askerli',25000,1);
insert into loanContract values (2,'Niko','Askerli',23000,1);
insert into currency values(1,'dolar');

--delete  from loanContract ;
--select * FROM loancontract;
--drop table curency;
--
--select * from loancontract;
--select* from currency;
--delete from currency ;
--drop table loanContract;
--drop table currency;
--select * from loanContract;
--delete from  currency;
--TRUNCATE table  currency;
 create table loanContract(
 id number(10) primary key ,
 name varchar2(30),
 surname varchar2(30),
 amount number(10),
 currency_id int, 
 constraint l_id_cs foreign key (currency_id) references currency(C_id) on delete CASCADE
 );
 alter table loanContract add deleted number (1) DEFAULT 0;
 select * from loancontract;

create table Nihad(
id int primary key,
name varchar2(20)
);
 alter  session set "_ORACLE_SCRIPT"=TRUE;
 CREATE user Nihad2 identified by 123456;
 GRANT all privileges to Nihad2;
grant create table to Nihad;

