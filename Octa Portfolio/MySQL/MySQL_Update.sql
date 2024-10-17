mysql -u rootmysql -u root
show databases;
create database db_update;
use db_update;
create table tb1(ID int(5)primary key auto_increment not null, Name varchar(50), Age int(3));
insert into tb1(Name, Age)values("Timothy", 18);
insert into tb1(Name, Age)values("Finna", 18);
insert into tb1(Name, Age)values("Venice", 6);
insert into tb1(Name, Age)values("Nico", 4);
select * from tb1;
update tb1 set Age=50;
select * from tb1;
update tb1 set Age=70 where Name="Timothy";
select * from tb1;
update tb1 set Name="Audije", Age=10 where ID="1";
select * from tb1;
select ID as "Aydi", Name as "Pangalan", Age as "Edad" from tb1 where ID < 3;
delete from tb1 where ID=1;
delete from tb1;
Exit