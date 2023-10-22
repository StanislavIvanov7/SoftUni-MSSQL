--14. Car Rental Database
CREATE DATABASE [CarRental1]
CREATE TABLE [Categories] (
[Id] INT PRIMARY KEY IDENTITY,
[CategoryName] NVARCHAR(70) NOT NULL,
[DailyRate] DECIMAL (7,2),
[WeeklyRate] DECIMAL (7,2),
[MonthlyRate] DECIMAL (7,2),
[WeekendRate] DECIMAL (7,2)
)

CREATE TABLE [Cars] (
[Id] INT PRIMARY KEY IDENTITY,
[PlateNumber] NVARCHAR(20) ,
[Manufacturer] NVARCHAR(50) NOT NULL,
[Model] NVARCHAR(50) NOT NULL,
[CarYear] SMALLINT NOT NULL,
[CategoryId] INT FOREIGN KEY REFERENCES [Categories](Id),
[Doors] SMALLINT NOT NULL,
[Picture] IMAGE ,
[Condition] NVARCHAR (50),
[Available] BIT NOT NULL
)

CREATE TABLE [Employees] (
[Id] INT PRIMARY KEY IDENTITY,
[FirstName] NVARCHAR (50) NOT NULL,
[LastName] NVARCHAR (50) NOT NULL,
[Title] NVARCHAR (50) NOT NULL,
[Notes] NVARCHAR(MAX)
)

CREATE TABLE [Customers] (
[Id] INT PRIMARY KEY IDENTITY,
[DriverLicenceNumber] NVARCHAR(30) NOT NULL,
[FullName] NVARCHAR(100) NOT NULL,
[Address] NVARCHAR (200),
[City] VARCHAR (20) NOT NULL ,
[ZIPCode] SMALLINT NOT NULL,
[Notes] NVARCHAR (MAX)
)



CREATE TABLE [RentalOrders](
[Id] INT PRIMARY KEY IDENTITY,
[EmployeeId] INT FOREIGN KEY REFERENCES [Employees](Id),
[CustomerId] INT FOREIGN KEY REFERENCES [Customers](Id),
[CarId] INT FOREIGN KEY REFERENCES Cars(Id),
[TankLevel] FLOAT(2),
[KilometrageStart] INT NOT NULL,
[KilometrageEnd] INT NOT NULL,
TotalKilometrage INT NOT NULL,
[StartDate] DATE NOT NULL,
[EndDate] DATE NOT NULL,
[TotalDays] SMALLINT NOT NULL,
[RateApplied] DECIMAL (7,2),
[TaxRate] DECIMAL (5,2),
[OrderStatus] VARCHAR(20),
[Notes] NVARCHAR(MAX)
)


INSERT INTO [Categories] (CategoryName, DailyRate, WeeklyRate, MonthlyRate, WeekendRate)
VALUES                   ('Cat1',NULL,NULL,NULL,NULL),
                         ('Cat2',1.5,2.8,4.1,5),
                         ('Cat3',2.0,4.2,1.1,NULL) 


INSERT INTO [Cars] (PlateNumber, Manufacturer, Model, CarYear, CategoryId,
Doors, Picture, Condition, Available)
VALUES             ('PA4344MN','Ford','Fiesta',2006,1,4,NULL,'Bad',0),
                   ('ST0000KL','BMW','X5',2015,3,4,NULL,'Very good',0),
                   ('DF8989RV','Audi','A8',2018,2,4,NULL,'Very good',1)

INSERT INTO [Employees] (FirstName, LastName, Title, Notes)
VALUES                  ('Pesho','Petrov','title1','dfveda'),
                        ('Tosho','Todorov','title2','grrvtr'),
                        ('Gosho','Ivanov','title3','bmiemborv')

INSERT INTO Customers ( DriverLicenceNumber, FullName, [Address], City, ZIPCode, Notes)
VALUES                  ('Pesho123','PeshoPetrov','ul.Aleksandar2','Kazanlak',6100,NULL),
                        ('Tosho123','ToshoTodorov','ul.Zavodska8 ','Stara Zagora',5100,NULL),
                        ('Gosho123','GoshoIvanov','ul.Zavodska9','Plovdiv',7100,NULL)

INSERT INTO RentalOrders (EmployeeId, CustomerId, CarId, TankLevel,
KilometrageStart,KilometrageEnd, TotalKilometrage, StartDate, EndDate,
TotalDays,RateApplied, TaxRate,OrderStatus, Notes)
VALUES    (1,1,2,NULL,266487,267100,267100-266487,'06/15/2021','06/19/2021',4,1.47,9.00,1,NULL),
          (2,2,3,18.40,26800,27200,27200-26800,'06/15/2021','06/17/2021',2,2.11,9.00,1,NULL),
          (3,1,1,45,4400,5640,5640-4400,'06/15/2021','06/20/2021',5,4.1,9.00,1,NULL)