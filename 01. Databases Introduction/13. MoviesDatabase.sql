--13. Movies Database
CREATE DATABASE [Movies]
CREATE TABLE [Directors](
[Id] INT PRIMARY KEY IDENTITY,
[DirectorName] NVARCHAR(70) NOT NULL,
[Notes] NVARCHAR (MAX)
)

CREATE TABLE [Genres](
[Id] INT PRIMARY KEY IDENTITY,
[GenreName] NVARCHAR (70) NOT NULL,
[Notes] NVARCHAR(MAX) 
)

CREATE TABLE [Categories](
[Id] INT PRIMARY KEY IDENTITY,
[CategoryName] NVARCHAR(70) NOT NULL,
[Notes] NVARCHAR(MAX)
)

CREATE TABLE [Movies](
[Id] INT PRIMARY KEY IDENTITY,
[Title] NVARCHAR(70) NOT NULL,
[DirectorId] INT FOREIGN KEY REFERENCES [Directors](Id),
[CopyrightYear] SMALLINT NOT NULL,
[Lenght] DECIMAL NOT NULL,
[GenreId] INT FOREIGN KEY REFERENCES [Genres](Id),
[CategoryId] INT FOREIGN KEY REFERENCES [Categories](Id),
[Rating] DECIMAL(2,1),
[Notes] NVARCHAR(MAX)
) 

INSERT INTO [Directors](DirectorName, Notes)
VALUES                 ('Pesho','gsdfvb'),
                       ('Tosho','troppte'),
                       ('Ted','vmbmv,f'),
                       ('Bobi','xasxqw'),
                       ('Viki','bvcgxva')

INSERT INTO [Genres] (GenreName, Notes)
VALUES               ('comedy','the best film'),
                     ('horror','horror hilm'),
                     ('documentary','not bad film'),
                     ('action','crazy film'),
                     ('drama',' very good')

INSERT INTO Categories (CategoryName, Notes)
VALUES               ('cat1','the best film'),
                     ('cat2','horror hilm'),
                     ('cat3','not bad film'),
                     ('cat4','crazy film'),
                     ('cat5',' very good')

INSERT INTO Movies (Title, DirectorId, CopyrightYear, [Lenght], GenreId, CategoryId, Rating, Notes)
VALUES               ('House',1,1876,2,1,2,8,'gagaa'),
                     ('Cars',2,1954,1.30,2,2,6,'gagaa'),
                     ('Mouse',3,1849,2,2,3,6,'gagaa'),
                     ('Sky',4,1914,2.20,1,1,7,'gagaa'),
                     ('Garden',1,1856,1.40,3,3,9,'gagaa')