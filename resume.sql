select * from persons;
alter table persons add  password varchar2(30);
select * from persons;
update persons set password='12345' where name='Nihad';
select * from persons;
