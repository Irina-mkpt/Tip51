create database reception;
use reception;
create table nomera
(Id_nomera int auto_increment, kategoriya_nomara char(255),cena char(255), index(Id_nomera), primary key(Id_nomera) );
create table postoyalec
(Id_postoyalca int auto_increment, document_udostoveryayushchiy_lichnost char(255),seriya_documenta char(255), familiya char(255),imya char(255),otchestvo char(255), sex char(7),bithday date, phone char(255),mesto_gitelstva char(255), index(Id_postoyalca), primary key(Id_postoyalca) );
create table status_nomera
(Id_statusa int, Id_postoyalca int, Id_nomera int, status char(255),data_bronirovaniya date,sotrudnik_resepshena text, INDEX(Id_statusa),INDEX(Id_postoyalca),INDEX(Id_nomera),primary key(Id_statusa), foreign key(Id_postoyalca) references postoyalec(Id_postoyalca) ,foreign key(Id_nomera) references nomera(Id_nomera))
