Create Security;
Use Security;

Create Table Ohrannik(
ID_ohr Int Primary Key,
Fio Nvarchar(50),
Vremya_raboti Nvarchar(5),
Ohr_object Nvarchar(50));

Create Table Ohran_object(
ID_obj Int Primary Key,
Ohr_Object Nvarchar(50),
Mesto Nvarchar(50),
Deyatelnost Nvarchar(100));

Create Table Privyazka_ohr(
ID_ohr Int, 
ID_obj Int,
Foreign Key ID_ohr References Ohrannik (ID_ohr),
Foreign Key ID_obj References Ohran_object (ID_obj));

Create Table Cam(
ID_cam Int Primary Key,
Sostoyanie Nvarchar(20));

Create Table Datchik(
ID_dat Int Primary key,
Sostoyanie Nvarchar(20));

Create Table Privyazka_cam(
ID_cam Int,
ID_obj Int,
Foreign Key ID_cam References Cam (ID_cam),
Foreign Key ID_obj References Ohran_object (ID_obj));

Create Table Privyazka_dat(
ID_dat Int,
ID_obj Int,
Foreign Key ID_dat References Datchik (ID_dat),
Foreign Key ID_obj References Ohran_object (ID_obj));
