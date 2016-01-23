--
-- Скрипт сгенерирован Devart dbForge Studio for SQL Server, Версия 5.1.178.0
-- Домашняя страница продукта: http://www.devart.com/ru/dbforge/sql/studio
-- Дата скрипта: 23.01.2016 14:04:15
-- Версия сервера: 11.00.2100
-- Версия клиента: 
--



USE Remember
GO

IF DB_NAME() <> N'Remember' SET NOEXEC ON
GO

--
-- Создать таблицу "dbo.Task"
--
PRINT (N'Создать таблицу "dbo.Task"')
GO
CREATE TABLE dbo.Task (
  TaskId int IDENTITY,
  Title varchar(250) NOT NULL,
  IsComplete bit NOT NULL,
  CONSTRAINT PK_Task PRIMARY KEY CLUSTERED (TaskId)
)
ON [PRIMARY]
GO
-- 
-- Вывод данных для таблицы Task
--
SET IDENTITY_INSERT dbo.Task ON
GO
INSERT dbo.Task(TaskId, Title, IsComplete) VALUES (2, N'Ololo task', CONVERT(bit, 'False'))
INSERT dbo.Task(TaskId, Title, IsComplete) VALUES (3, N'Figase task', CONVERT(bit, 'True'))
INSERT dbo.Task(TaskId, Title, IsComplete) VALUES (4, N'Second task', CONVERT(bit, 'False'))
GO
SET IDENTITY_INSERT dbo.Task OFF
GO
SET NOEXEC OFF
GO