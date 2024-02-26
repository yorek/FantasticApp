-- This file was created by accepting all CoPilot prompts after typing "CREATE TABLE [dbo].[Weather"...

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WeatherReading]') AND type in (N'U'))
BEGIN
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


      -- Language: sql
      ALTER TABLE [dbo].[WeatherReading] ADD  CONSTRAINT [DF_WeatherReading_Date]  DEFAULT (getdate()) FOR [Date]

      -- Language: sql
      INSERT INTO [dbo].[WeatherReading]
            ([Date]
            ,[TemperatureC]
            ,[Summary])
      VALUES
            ('2020-01-01 00:00:00.000'
            ,1
            ,'Freezing')

      -- Language: sql
      INSERT INTO [dbo].[WeatherReading]
            ([Date]
            ,[TemperatureC]
            ,[Summary])
      VALUES
            ('2020-01-02 00:00:00.000'
            ,14
            ,'Bracing')  

      -- Language: sql
      INSERT INTO [dbo].[WeatherReading]
            ([Date]
            ,[TemperatureC]
            ,[Summary])
      VALUES
            ('2020-01-03 00:00:00.000'
            ,-13
            ,'Freezing')

      -- Language: sql
      INSERT INTO [dbo].[WeatherReading]
            ([Date]
            ,[TemperatureC]
            ,[Summary])
      VALUES
            ('2020-01-04 00:00:00.000'
            ,2
            ,'Chilly')

      -- Language: sql
      INSERT INTO [dbo].[WeatherReading]
            ([Date]
            ,[TemperatureC]
            ,[Summary])
      VALUES
            ('2020-01-05 00:00:00.000'
            ,1
            ,'Cool')

      -- Language: sql
      INSERT INTO [dbo].[WeatherReading]
            ([Date]
            ,[TemperatureC]
            ,[Summary])
      VALUES
            ('2020-01-06 00:00:00.000'
            ,-5
            ,'Mild')

      -- Language: sql
      INSERT INTO [dbo].[WeatherReading]
            ([Date]
            ,[TemperatureC]
            ,[Summary])
      VALUES
            ('2020-01-07 00:00:00.000'
            ,3
            ,'Warm')

      -- Language: sql
      INSERT INTO [dbo].[WeatherReading]
            ([Date]
            ,[TemperatureC]
            ,[Summary])
      VALUES
            ('2020-01-08 00:00:00.000'
            ,4
            ,'Balmy')

      -- Language: sql
      INSERT INTO [dbo].[WeatherReading]
            ([Date]
            ,[TemperatureC]
            ,[Summary])
      VALUES
            ('2020-01-09 00:00:00.000'
            ,5
            ,'Hot')

      -- Language: sql
      INSERT INTO [dbo].[WeatherReading]
            ([Date]
            ,[TemperatureC]
            ,[Summary])
      VALUES
            ('2020-01-10 00:00:00.000'
            ,6
            ,'Sweltering')

      -- Language: sql
      INSERT INTO [dbo].[WeatherReading]
            ([Date]
            ,[TemperatureC]
            ,[Summary])
      VALUES
            ('2020-01-11 00:00:00.000'
            ,7
            ,'Scorching')

      SELECT * FROM [dbo].[WeatherReading]

END
