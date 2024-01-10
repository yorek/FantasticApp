-- This file was created by accepting all CoPilot prompts after typing "CREATE TABLE [dbo].[Counter"...

-- Language: sql
CREATE TABLE [dbo].[Counter](
    [id] [int] IDENTITY(1,1) NOT NULL,
    [value] [int] NOT NULL,
 CONSTRAINT [PK_counter] PRIMARY KEY CLUSTERED 
(
    [id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Counter]
           ([value])
VALUES
    (0)
GO

SELECT * FROM [dbo].[Counter]
GO