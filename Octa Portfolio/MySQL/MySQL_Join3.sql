mysql -u root
show databases;
create database db_join3;
use db_join3;

create table tb1(ID int(3)primary key auto_increment not null, Student varchar(50), Book_Number int(5), Price int(4));
insert into tb1(Student, Book_Number, Price)values("Richard", 10001, 899);
insert into tb1(Student, Book_Number, Price)values("Timothy", 10002, 499);
insert into tb1(Student, Book_Number, Price)values("Tiffany", 10003, 799);
insert into tb1(Student, Book_Number, Price)values("Venice", 10004, 999);
insert into tb1(Student, Book_Number, Price)values("Nico", 10006, 1000);
select * from tb1;

create table tb2(ID int(3)primary key auto_increment not null, Book_Name varchar(50), Book_Number int(5));
insert into tb2(Book_Name, Book_Number)values("LTS", 10001);
insert into tb2(Book_Name, Book_Number)values("CTS", 10002);
insert into tb2(Book_Name, Book_Number)values("TWT", 10003);
insert into tb2(Book_Name, Book_Number)values("It Ends With Us", 10004);
insert into tb2(Book_Name, Book_Number)values("It Starts With Us", 10005);
select * from tb2;

create table tb3(ID int(3)primary key auto_increment not null, Book_Name varchar(50), Book_Number int(5), Stocks int(3));
insert into tb3(Book_Name, Book_Number, Stocks)values("LTS", 10001, 500);
insert into tb3(Book_Name, Book_Number, Stocks)values("CTS", 10002, 976);
insert into tb3(Book_Name, Book_Number, Stocks)values("TWT", 10003, 143);
insert into tb3(Book_Name, Book_Number, Stocks)values("It Ends With Us", 10004, 432);
insert into tb3(Book_Name, Book_Number, Stocks)values("It Starts With Us", 10005, 523);

select * from tb1, tb2, tb3 where tb1.Book_Number=tb2.Book_Number && tb1.Book_Number=tb3.Book_Number;

