--03. Alter Minions Table
ALTER TABLE[Minions]
ADD [TownId] INT FOREIGN KEY REFERENCES [Towns]([Id])

ALTER TABLE [Minions]
ALTER COLUMN [Age] INT