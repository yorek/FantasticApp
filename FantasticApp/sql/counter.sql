-- This file was created by accepting all CoPilot prompts after typing "CREATE TABLE [dbo].[Counter"...

-- If Table does not exist, create it
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Counter]') AND type in (N'U'))
BEGIN
    CREATE TABLE [dbo].[Counter](
        [id] [int] IDENTITY(1,1) NOT NULL,
        [value] [int] NOT NULL,
    CONSTRAINT [PK_counter] PRIMARY KEY CLUSTERED 
    (
        [id] ASC
    )WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
    ) ON [PRIMARY]

    INSERT INTO [dbo].[Counter]
           ([value])
    VALUES
        (0)

    SELECT * FROM [dbo].[Counter]
END
