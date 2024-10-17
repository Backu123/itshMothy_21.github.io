mysql -u root
show databases;
create database db;
use db;
show tables;
create table tb1(Name varchar(50));
create table tb2(Name varchar(50), ID int(11));
desc tb1;
desc tb2;
drop table tb1;
drop table tb2;	
drop database db;
create database db;
use db;
create table tb(Name varchar(50), Secname varchar(50));
alter table tb rename tb1;
alter table tb1 add ID varchar(50);
alter table tb1 rename column Name to Pangalan;
alter table tb1 modify column ID int(11);
alter table tb1 drop column ID;
desc tb1;

insert into tb1(Pangalan, Secname)values("Richard", "Pogi");
select * from tb1;
select Pangalan from tb1;
select Pangalan, Secname from tb1;

create table tb2(ID int(3)primary key auto_increment not null, Student varchar(50), Book_Number int(5), Price int(4));
insert into tb2(Student, Book_Number, Price)values("Richard", 10001, 899);
insert into tb2(Student, Book_Number, Price)values("Timothy", 10002, 499);
insert into tb2(Student, Book_Number, Price)values("Tiffany", 10003, 799);
insert into tb2(Student, Book_Number, Price)values("Venice", 10004, 999);
insert into tb2(Student, Book_Number, Price)values("Nico", 10006, 1000);
select * from tb2 where ID=2;
select * from tb2 where Student like "T%";
select * from tb2 where Student like "%T";
select * from tb2 where Student like "%I%";
select Sum(Price) from tb2;
select Avg(Price) from tb2;
select Min(Price) from tb2;
select Max(Price) from tb2;
select Count(Price) from tb2;
select Student as "Name" from tb2;
select ID as "Aydi", Student as "Name", Book_Number as "Libro", Price as "Value" from tb2;
select * from tb2 where Student="Richard" and Price=899;
select * from tb2 where Student="Richard" or Price=499;

create table tb3(CN int(2)primary key auto_increment not null, Name varchar(50), Age int(3), Sex varchar(1));
insert into tb3(Name, Age, Sex)values("Marg", 21, "F");
insert into tb3(Name, Age, Sex)values("Timothy", 18, "M");
insert into tb3(Name, Age, Sex)values("Daryll", 15, "M"); 
update tb3 set Age=40 where Name="Daryll";
update tb3 set Age=40, Sex="M" where Name="Marg";
delete from tb3;
delete from tb3 where CN=3;

//tb2 table
create table tb4(ID int(3)primary key auto_increment not null, Book_Name varchar(50), Book_Number int(5));
insert into tb4(Book_Name, Book_Number)values("LTS", 10001);
insert into tb4(Book_Name, Book_Number)values("CTS", 10002);
insert into tb4(Book_Name, Book_Number)values("TWT", 10003);
insert into tb4(Book_Name, Book_Number)values("It Ends With Us", 10004);
insert into tb4(Book_Name, Book_Number)values("It Starts With Us", 10005);

select * from tb2, tb4 where tb2.Book_Number=tb4.Book_Number;
select * from tb2 inner join tb4 on tb2.Book_Number=tb4.Book_Number;
select tb2.Student, tb4.Book_Name from tb2, tb4 where tb2.Book_Number=tb4.Book_Number;
select * from tb2 Left join tb4 on tb2.Book_Number=tb4.Book_Number;
select * from tb2 right join tb4 on tb2.Book_Number=tb4.Book_Number;

create table tb5(ID int(3)primary key auto_increment not null, Book_Name varchar(50), Book_Number int(5), Stocks int(3));
insert into tb5(Book_Name, Book_Number, Stocks)values("LTS", 10001, 500);
insert into tb5(Book_Name, Book_Number, Stocks)values("CTS", 10002, 976);
insert into tb5(Book_Name, Book_Number, Stocks)values("TWT", 10003, 143);
insert into tb5(Book_Name, Book_Number, Stocks)values("It Ends With Us", 10004, 432);
insert into tb5(Book_Name, Book_Number, Stocks)values("It Starts With Us", 10005, 523);
select * from tb2, tb4, tb5 where tb2.Book_Number=tb4.Book_Number && tb2.Book_Number=tb5.Book_Number;
Exit
mysqldump -u root db > C:\Users\ASUS\Downloads\Database\db.sql
mysql -u root db2 < C:\Users\ASUS\Downloads\Database\db.sql
