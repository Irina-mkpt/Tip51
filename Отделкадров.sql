create database otdel_kadrov;
use otdel_kadrov;

create table Должность(
id int auto_increment,
primary key(id),
Название varchar(50) not null,
Зарплата int not null);

create table Сотрудник(
id int auto_increment,
primary key(id),
ФИО varchar(70) not null,
Телефон varchar(20) not null,
Должность int not null,
index(Должность),
foreign key (Должность) references Должность(id));

