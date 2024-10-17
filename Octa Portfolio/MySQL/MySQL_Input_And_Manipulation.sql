mysql -u root
show databases;
create database db_input;
use db_input;
create table tb1(ID int(5)primary key auto_increment not null, Name varchar(50), Age int(3));
insert into tb1(Name, Age)values("Timothy", 18);
insert into tb1(Name, Age)values("Finna", 18);
insert into tb1(Name, Age)values("Venice", 6);
insert into tb1(Name, Age)values("Nico", 4);
select * from tb1;
select * from tb1 where Name like '%n%';
select * from tb1 where Student like "%I%";
select Sum(Age) from tb1;
select Avg(Age) from tb1;
select Min(Age) from tb1;
select Max(Age) from tb1;
select Count(Age) from tb1;
select Name as "Pangalan" from tb1;
select ID as "Aydi", Name as "Pangalan", Age as "Edad" from tb1;
select * from tb1 where Name="Finna" and Age=18;
select * from tb1 where Name="Finna" or Age=6;
Exit