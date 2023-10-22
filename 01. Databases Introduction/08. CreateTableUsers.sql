--08. Create Table Users
CREATE TABLE [Users](
[Id] BIGINT PRIMARY KEY IDENTITY,
[Username] VARCHAR(30) UNIQUE NOT NULL,
[Password] VARCHAR(26) NOT NULL,
[ProfilePicture] VARBINARY(MAX) 
CHECK (DATALENGTH(ProfilePicture) <= 900000),
[LastLoginTime] TIME,
[IsDeleted] BIT ,
)

INSERT INTO [Users] ([Username] ,[Password],[LastLoginTime] ,[IsDeleted] )
VALUES              ('Krasimir','krasi123','21:21:20','true'),
                    ('Pesho','pesho123','18:25:22','false'),
                    ('Tosho','tosho123','12:11:10','true'),
                    ('Jon','jon123','23:23:23','false'),
                    ('Petq','petq123','17:10:18','true')
