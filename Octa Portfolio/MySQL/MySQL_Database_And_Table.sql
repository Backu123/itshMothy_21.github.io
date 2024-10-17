mysql -u root
show databases;
create database db_table;
use db_table;
show tables;
create table tb1(ID int(11));
create table tb2(Name varchar(50), Age int(3));
desc tb1;
desc tb2;
drop table tb1;
drop table tb2;
drop database db_table;