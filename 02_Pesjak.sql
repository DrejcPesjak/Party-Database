/*
Created		5.4.2017
Modified		5.4.2017
Project		
Model		
Company		
Author		
Version		
Database		MS SQL 7 
*/

Create database Zurerski_pohod
go

Use Zurerski_pohod
go

--Drop table [KONCERT] 
--go
--Drop table [PRIJATELJI] 
--go
--Drop table [PIJACA] 
--go
--Drop table [KRAJ] 
--go
--Drop table [POHODI] 
--go


Create table [POHODI] (
	[sifra] Integer NOT NULL,
	/*[kraj] Integer NOT NULL,
	[koncert] Integer NULL,*/
	[vstopnina] Money NULL,
	/*[pijaca] Integer NOT NULL,
	[prijatelji] Integer NULL,*/
	[zapravljen_denar] Money NULL,
	[datum] Datetime NOT NULL,
Primary Key  ([sifra])
) 
go

Create table [KRAJ] (
	[sifra_kraja] Integer NOT NULL,
	[sifra_pohoda] Integer NOT NULL,
	[kraj] Nvarchar(25) NOT NULL,
Primary Key  ([sifra_kraja])
) 
go

Create table [PIJACA] (
	[sifra_pijaca] Integer NOT NULL,
	[sifra_pohoda] Integer NOT NULL,
	[pijaca] Nvarchar(40) NOT NULL,
	[vol_alkohola] Integer NOT NULL,
Primary Key  ([sifra_pijaca])
) 
go

Create table [PRIJATELJI] (
	[sifra_prijatelja] Integer NOT NULL,
	[sifra_pohoda] Integer NOT NULL,
	[ime] Nvarchar(40) NOT NULL,
	[priimek] Nvarchar(40) NOT NULL,
Primary Key  ([sifra_prijatelja])
) 
go

Create table [KONCERT] (
	[sifra_nastopajoci] Integer NOT NULL,
	[sifra_pohoda] Integer NOT NULL,
	[ime_skupine] Nvarchar(40) NULL,
	[koncert_cena] Money NULL,
Primary Key  ([sifra_nastopajoci])
) 
go


Alter table [KRAJ] add  foreign key([sifra_pohoda]) references [POHODI] ([sifra]) 
go
Alter table [PIJACA] add  foreign key([sifra_pohoda]) references [POHODI] ([sifra]) 
go
Alter table [PRIJATELJI] add  foreign key([sifra_pohoda]) references [POHODI] ([sifra]) 
go
Alter table [KONCERT] add  foreign key([sifra_pohoda]) references [POHODI] ([sifra]) 
go


Set quoted_identifier on
go


Set quoted_identifier off
go


/* Roles permissions */


/* Users permissions */


