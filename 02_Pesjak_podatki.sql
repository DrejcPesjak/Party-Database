USE [Zurerski_pohod]
GO

SET DATEFORMAT DMY
GO

INSERT INTO [dbo].[POHODI]([sifra],[vstopnina],[zapravljen_denar],[datum])
VALUES  (1, 5, 3, '18-03-2017'),
		(2, NULL, 4, '03-04-2017'),
		(3, NULL, 9, '10-04-2017'),
		(4, 12, 8, '14-04-2017')

INSERT INTO PIJACA([sifra_pijaca],[sifra_pohoda],[pijaca],[vol_alkohola]) 
VALUES  (1, 1,'Cedevita',0),
		(2, 1,'Laško',5),
		(3, 2,'Limonada',0),
		(4, 2,'Union',5),
		(5, 3,'CocaCola',0),
		(6, 3,'Heineken',5),
		(7, 3,'Rum Malibu',21),
		(8, 4,'Sprite',0),		
		(9, 4,'Borovničke',20),	
		(10, 4,'Jack Daniels',40)

INSERT INTO [dbo].[KRAJ]([sifra_kraja],[sifra_pohoda],[kraj])
VALUES  (1, 1,'Celje'),
		(2, 2,'Žalec'),
		(3, 3,'Vrbje'),
		(4, 4,'Celje')

INSERT INTO [dbo].[PRIJATELJI]([sifra_prijatelja],[sifra_pohoda],[ime],[priimek])
VALUES	(1, 1, 'Tibor', 'Zupan'),
		(2, 1, 'Jan', 'Ferčec'),
		(3, 1, 'Luka', 'Šelih'),
		(4, 1, 'Patrik', 'Škrablin'),
		(5, 1, 'Žak', 'Paradižnik'),
		(6, 2,	'Lan', 'Koprivc'),
		(7, 3, 'Žan', 'Drobež'),
		(8, 2, 'Žan', 'Drobež')

INSERT INTO [dbo].[KONCERT]([sifra_nastopajoci],[sifra_pohoda],[ime_skupine],[koncert_cena])
VALUES	(1, 2, 'Big foot Mama', 20)