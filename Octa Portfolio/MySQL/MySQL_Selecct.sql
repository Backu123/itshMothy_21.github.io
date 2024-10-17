mysql -u root
show databases;
create database db_value;
use db_value;
create table tb1(Name varchar(50), Age int(3));
insert into tb1(Name, Age)values("Timothy", 18);
select * from tb1;
select Name as "Pangalan" from tb1;
select Name from tb1;
select Age from tb1;
alter table tb1 add ID int(5)primary key auto_increment not null;
insert into tb1(Name, Age)values("Finna", 18);
select * from tb1 where ID=2;
Exit