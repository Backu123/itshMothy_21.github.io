mysql -u root
create database db_join;
use db_join;
create table tb1(ID int(3)primary key auto_increment not null, Student varchar(50), Book_Number int(5), Price int(4));
insert into tb1(Student, Book_Number, Price)values("Richard", 10001, 899);
insert into tb1(Student, Book_Number, Price)values("Timothy", 10002, 499);
insert into tb1(Student, Book_Number, Price)values("Tiffany", 10003, 799);
insert into tb1(Student, Book_Number, Price)values("Venice", 10004, 999);
insert into tb1(Student, Book_Number, Price)values("Nico", 10006, 1000);

create table tb2(ID int(3)primary key auto_increment not null, Book_Name varchar(50), Book_Number int(5));
insert into tb2(Book_Name, Book_Number)values("LTS", 10001);
insert into tb2(Book_Name, Book_Number)values("CTS", 10002);
insert into tb2(Book_Name, Book_Number)values("TWT", 10003);
insert into tb2(Book_Name, Book_Number)values("It Ends With Us", 10004);
insert into tb2(Book_Name, Book_Number)values("It Starts With Us", 10005);

select * from tb1, tb2 where tb1.Book_Number=tb2.Book_Number;
select * from tb1 inner join tb2 on tb1.Book_Number=tb2.Book_Number;
select tb1.Student, tb2.Book_Name from tb1, tb2 where tb1.Book_Number=tb2.Book_Number;
select * from tb1 Left join tb2 on tb1.Book_Number=tb2.Book_Number;
select * from tb1 right join tb2 on tb1.Book_Number=tb2.Book_Number;
Exit