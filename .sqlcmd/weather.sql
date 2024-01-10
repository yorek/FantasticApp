-- This file was created by accepting all CoPilot prompts after typing "CREATE TABLE [dbo].[Weather"...

-- Language: sql
CREATE TABLE [dbo].[WeatherReading](
    [Id] [int] IDENTITY(1,1) NOT NULL,
    [Date] [datetime2](7) NOT NULL,
    [TemperatureC] [int] NOT NULL,
    [Summary] [nvarchar](max) NULL,
 CONSTRAINT [PK_weather] PRIMARY KEY CLUSTERED 
(
    [Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


-- Language: sql
ALTER TABLE [dbo].[WeatherReading] ADD  CONSTRAINT [DF_WeatherReading_Date]  DEFAULT (getdate()) FOR [Date]
GO

-- Language: sql
INSERT INTO [dbo].[WeatherReading]
           ([Date]
           ,[TemperatureC]
           ,[Summary])
     VALUES
           ('2020-01-01 00:00:00.000'
           ,1
           ,'Freezing')
GO

-- Language: sql
INSERT INTO [dbo].[WeatherReading]
           ([Date]
           ,[TemperatureC]
           ,[Summary])
     VALUES
           ('2020-01-02 00:00:00.000'
           ,14
           ,'Bracing')  
GO

-- Language: sql
INSERT INTO [dbo].[WeatherReading]
           ([Date]
           ,[TemperatureC]
           ,[Summary])
     VALUES
           ('2020-01-03 00:00:00.000'
           ,-13
           ,'Freezing')
GO

-- Language: sql
INSERT INTO [dbo].[WeatherReading]
           ([Date]
           ,[TemperatureC]
           ,[Summary])
     VALUES
           ('2020-01-04 00:00:00.000'
           ,2
           ,'Chilly')
GO

-- Language: sql
INSERT INTO [dbo].[WeatherReading]
           ([Date]
           ,[TemperatureC]
           ,[Summary])
     VALUES
           ('2020-01-05 00:00:00.000'
           ,1
           ,'Cool')
GO

-- Language: sql
INSERT INTO [dbo].[WeatherReading]
           ([Date]
           ,[TemperatureC]
           ,[Summary])
     VALUES
           ('2020-01-06 00:00:00.000'
           ,-5
           ,'Mild')
GO

-- Language: sql
INSERT INTO [dbo].[WeatherReading]
           ([Date]
           ,[TemperatureC]
           ,[Summary])
     VALUES
           ('2020-01-07 00:00:00.000'
           ,3
           ,'Warm')
GO

-- Language: sql
INSERT INTO [dbo].[WeatherReading]
           ([Date]
           ,[TemperatureC]
           ,[Summary])
     VALUES
           ('2020-01-08 00:00:00.000'
           ,4
           ,'Balmy')
GO

-- Language: sql
INSERT INTO [dbo].[WeatherReading]
           ([Date]
           ,[TemperatureC]
           ,[Summary])
     VALUES
           ('2020-01-09 00:00:00.000'
           ,5
           ,'Hot')
GO

-- Language: sql
INSERT INTO [dbo].[WeatherReading]
           ([Date]
           ,[TemperatureC]
           ,[Summary])
     VALUES
           ('2020-01-10 00:00:00.000'
           ,6
           ,'Sweltering')
GO

-- Language: sql
INSERT INTO [dbo].[WeatherReading]
           ([Date]
           ,[TemperatureC]
           ,[Summary])
     VALUES
           ('2020-01-11 00:00:00.000'
           ,7
           ,'Scorching')
GO

SELECT * FROM [dbo].[WeatherReading]
GO