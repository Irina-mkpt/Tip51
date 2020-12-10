create database DB_support;
use DB_support;
create table Number (
№_number smallint auto_increment not null,
primary key (№_number),
Category varchar(20),
Rroms smallint);

create table Menu (
ID_dish smallint auto_increment not null,
primary key (ID_dish),
Name varchar(20),
Cost decimal(15,2),
Weight double,
Type varchar(50));

create table Kitchen (
ID_kitchen smallint auto_increment not null,
primary key (ID_kitchen),
ID_dish smallint not null,
foreign key (ID_dish) references Menu (ID_dish),
ID_employee smallint not null);

create table Booking (
ID_booking smallint not null,
№_number smallint  not null,
foreign key (№_number) references Number (№_number),
ID_kitchen smallint not null,
foreign key (ID_kitchen) references Kitchen (ID_kitchen),
Time_order datetime);

create table Cleaning (
ID_сleaning smallint auto_increment not null,
primary key (ID_сleaning),
№_number smallint not null,
foreign key (№_number) references Number (№_number),
ID_employee smallint not null);

create table Сhar (
ID_chart smallint not null,
ID_сleaning smallint not null,
foreign key (ID_сleaning) references Cleaning (ID_сleaning),
Date_chart date, 
Time_chart time)
