/*
Created		17-Apr-17
Modified		17-Apr-17
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/
























Drop table [dbo].[SRECANJE] 
go
Drop table [dbo].[SPITA_PIJACA] 
go
Drop table [dbo].[POHOD] 
go
Drop table [dbo].[PIJACA] 
go
Drop table [dbo].[LOKAL_POHOD] 
go
Drop table [dbo].[LOKAL] 
go
Drop table [dbo].[KRAJ] 
go
Drop table [dbo].[KONCERT] 
go



Drop type [sys].[geography]
go
Drop type [sys].[geometry]
go
Drop type [sys].[hierarchyid]
go



















Create type [sys].[geography]
EXTERNAL NAME [Microsoft].[SqlServer.Types.Microsoft.SqlServer.Types.SqlGeography]
go

Create type [sys].[geometry]
EXTERNAL NAME [Microsoft].[SqlServer.Types.Microsoft.SqlServer.Types.SqlGeometry]
go

Create type [sys].[hierarchyid]
EXTERNAL NAME [Microsoft].[SqlServer.Types.Microsoft.SqlServer.Types.SqlHierarchyId]
go




Create table [dbo].[KONCERT]
(
	[izvajalec] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[sifraPohoda] Integer NOT NULL,
Primary Key ([izvajalec],[sifraPohoda]) ON [PRIMARY]
) 
ON [PRIMARY]
go

Create table [dbo].[KRAJ]
(
	[postnaSt] Integer NOT NULL,
	[kraj] Nvarchar(30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
Primary Key ([postnaSt]) ON [PRIMARY]
) 
ON [PRIMARY]
go

Create table [dbo].[LOKAL]
(
	[sifraLokala] Integer NOT NULL,
	[ime] Nvarchar(25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ulica] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[vstopnina] Money NULL,
	[postnaSt] Integer NOT NULL,
Primary Key ([sifraLokala]) ON [PRIMARY]
) 
ON [PRIMARY]
go

Create table [dbo].[LOKAL_POHOD]
(
	[sifra] Integer NOT NULL,
	[zapravil] Money NULL,
	[sifraPohoda] Integer NOT NULL,
	[sifraLokala] Integer NOT NULL,
Primary Key ([sifra]) ON [PRIMARY]
) 
ON [PRIMARY]
go

Create table [dbo].[PIJACA]
(
	[sifraPijace] Integer NOT NULL,
	[ime] Nvarchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[alcoProcent] Decimal(5,0) NULL,
Primary Key ([sifraPijace]) ON [PRIMARY]
) 
ON [PRIMARY]
go

Create table [dbo].[POHOD]
(
	[sifraPohoda] Integer NOT NULL,
	[zacetek] Datetime NOT NULL,
	[konec] Datetime NOT NULL,
Primary Key ([sifraPohoda]) ON [PRIMARY]
) 
ON [PRIMARY]
go

Create table [dbo].[SPITA_PIJACA]
(
	[sifra] Integer NOT NULL,
	[kolicina] Decimal(5,0) NOT NULL,
	[sifraPohoda] Integer NOT NULL,
	[sifraPijace] Integer NOT NULL,
Primary Key ([sifra]) ON [PRIMARY]
) 
ON [PRIMARY]
go

Create table [dbo].[SRECANJE]
(
	[sifraSrecanja] Char(10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[ime] Char(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[priimek] Char(10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[sifraPohoda] Integer NOT NULL,
Primary Key ([sifraSrecanja]) ON [PRIMARY]
) 
ON [PRIMARY]
go


























Alter table [dbo].[LOKAL] add  foreign key([postnaSt]) references [dbo].[KRAJ] ([postnaSt])  on update no action on delete no action 
go
Alter table [dbo].[LOKAL_POHOD] add  foreign key([sifraLokala]) references [dbo].[LOKAL] ([sifraLokala])  on update no action on delete no action 
go
Alter table [dbo].[SPITA_PIJACA] add  foreign key([sifraPijace]) references [dbo].[PIJACA] ([sifraPijace])  on update no action on delete no action 
go
Alter table [dbo].[KONCERT] add  foreign key([sifraPohoda]) references [dbo].[POHOD] ([sifraPohoda])  on update no action on delete no action 
go
Alter table [dbo].[LOKAL_POHOD] add  foreign key([sifraPohoda]) references [dbo].[POHOD] ([sifraPohoda])  on update no action on delete no action 
go
Alter table [dbo].[SPITA_PIJACA] add  foreign key([sifraPohoda]) references [dbo].[POHOD] ([sifraPohoda])  on update no action on delete no action 
go
Alter table [dbo].[SRECANJE] add  foreign key([sifraPohoda]) references [dbo].[POHOD] ([sifraPohoda])  on update no action on delete no action 
go


Set quoted_identifier on
go

























Set quoted_identifier off
go





Create role [db_accessadmin]
go
Create role [db_backupoperator]
go
Create role [db_datareader]
go
Create role [db_datawriter]
go
Create role [db_ddladmin]
go
Create role [db_denydatareader]
go
Create role [db_denydatawriter]
go
Create role [db_owner]
go
Create role [db_securityadmin]
go
Create role [public]
go



sp_addrolemember [db_owner], [dbo]
go



/* Roles permissions */





/* Users permissions */






