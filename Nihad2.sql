create table skill(
id int primary key,
name varchar2(20)
);
alter table skill add nikodeleted number(2) default 0;
alter table skill modify nikodeleted invisible;