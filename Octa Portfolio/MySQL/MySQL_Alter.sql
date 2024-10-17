mysql -u root
show databases;
create database db_alter;
use db_alter;
show tables;
create table t(Student_ID int(11));
create table tb(Name varchar(50));
create table st(Strand varchar(50));
desc tb;
alter table tb rename tb1;
alter table tb1 add ID varchar(50);
alter table tb1 rename column Name to Pangalan;
alter table tb1 modify column ID int(11);
alter table tb1 drop column ID;
desc tb1;
show tables like 't';
show tables like 't%';
show tables like '%t';
Exit