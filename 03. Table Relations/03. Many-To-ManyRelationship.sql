--03. Many-To-Many Relationship
CREATE TABLE [Students](
[StudentID] INT PRIMARY KEY IDENTITY,
[Name] NVARCHAR (50) NOT NULL
)
INSERT INTO [Students] ([Name]) 
VALUES                 ('Mila'),
                       ('Toni'),
					   ('Ron')

CREATE TABLE [Exams](
[ExamID] INT PRIMARY KEY IDENTITY (101,1),
[Name] NVARCHAR (30) NOT NULL
)

INSERT INTO [Exams] ([Name])
VALUES              ('SpringMVC'),
                    ('Neo4j'),
					('Oracle 11g')

CREATE TABLE [StudentsExams](
[StudentID] INT FOREIGN KEY REFERENCES [Students]([StudentID]),
[ExamID]    INT FOREIGN KEY REFERENCES [Exams]([ExamID]),
PRIMARY KEY([StudentID],[ExamID])
)

INSERT INTO [studentsExams] ([StudentID],[ExamID])
VALUES                      (1 ,101),
                            (1,102),
							(2,101),
							(3,103),
							(2,102),
							(2,103)