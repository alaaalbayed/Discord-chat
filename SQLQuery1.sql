CREATE TABLE [dbo].[messages] (
    [messageId]    INT           IDENTITY (1, 1) NOT NULL,
    [messFromUser] INT           NOT NULL,
    [messToUser]   INT           NOT NULL,
    [messageBody]      NVARCHAR (50) NOT NULL,
    [messTime]     DATETIME      NOT NULL,
    [imagePath]    NVARCHAR (50) NULL,
    CONSTRAINT [PK_messages] PRIMARY KEY CLUSTERED ([messageId] ASC),
    CONSTRAINT [FK_messages_RegisterToFromUser] FOREIGN KEY ([messFromUser]) REFERENCES [dbo].[Users] ([userId]),
    CONSTRAINT [FK_messages_RegisterToUser] FOREIGN KEY ([messToUser]) REFERENCES [dbo].[Users] ([userId])
);