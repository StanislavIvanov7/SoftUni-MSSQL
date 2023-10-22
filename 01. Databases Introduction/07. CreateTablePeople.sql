--07. Create Table People
CREATE TABLE [People](
  [Id] INT PRIMARY KEY IDENTITY,
  [Name] NVARCHAR(200) NOT NULL,
  [Picture] VARBINARY(MAX)
  CHECK (DATALENGTH(Picture) < 2000000),
  [Height] DECIMAL (3,2),
  [Weight] DECIMAL (5,2),
  [Gender] CHAR NOT NULL
  CHECK (Gender = 'f' OR Gender = 'm'),
  [Birthdate] DATE NOT NULL,
  [Biography] NVARCHAR(MAX)
)

INSERT INTO [People]([Name],[Height],[Weight] ,[Gender],[Birthdate] )
VALUES      ('Gosho',1.78,78.5,'m','2004-09-15'),
            ('Pesho',1.87,90,'m','2002-07-15'),
            ('Jon',1.94,100.1,'m','2001-09-24'),
            ('Petq',1.65,55,'f','2004-03-11'),
            ('Mitko',1.80,81,'m','2005-08-19')