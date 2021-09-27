CREATE TABLE [dbo].[customerOrder] (
    [Id]             INT           IDENTITY (1, 1) NOT NULL,
    [OrderReference] NVARCHAR (15) NULL,
    [OrderDate]      DATETIME      NULL,
    [OrderType]      INT           NOT NULL,
    [OrderStatus]    INT           NOT NULL,
    [qty]            INT           NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_OrderState] FOREIGN KEY ([OrderStatus]) REFERENCES [dbo].[StatusList] ([StateId])
);





SET IDENTITY_INSERT [dbo].[customerOrder] ON
INSERT INTO [dbo].[customerOrder] ([Id], [OrderReference], [OrderDate], [OrderType], [OrderStatus], [qty]) VALUES (2, N'CHNDRGN/0001', N'2021-09-19 14:23:59', 1, 4, 5)
INSERT INTO [dbo].[customerOrder] ([Id], [OrderReference], [OrderDate], [OrderType], [OrderStatus], [qty]) VALUES (3, N'CHNDRGN/0002', N'2021-09-19 14:23:59', 1, 4, 5)
INSERT INTO [dbo].[customerOrder] ([Id], [OrderReference], [OrderDate], [OrderType], [OrderStatus], [qty]) VALUES (4, N'CHNDRGN/0003', N'2021-09-19 14:23:59', 1, 3, 5)
INSERT INTO [dbo].[customerOrder] ([Id], [OrderReference], [OrderDate], [OrderType], [OrderStatus], [qty]) VALUES (5, N'CHNDRGN/0004', N'2021-09-19 14:23:59', 1, 2, 5)
INSERT INTO [dbo].[customerOrder] ([Id], [OrderReference], [OrderDate], [OrderType], [OrderStatus], [qty]) VALUES (6, N'CHNDRGN/0005', N'2021-09-19 14:23:59', 1, 1, 5)
INSERT INTO [dbo].[customerOrder] ([Id], [OrderReference], [OrderDate], [OrderType], [OrderStatus], [qty]) VALUES (7, N'CHNDRGN/0006', N'2021-09-19 14:23:59', 1, 6, 5)
INSERT INTO [dbo].[customerOrder] ([Id], [OrderReference], [OrderDate], [OrderType], [OrderStatus], [qty]) VALUES (8, N'CHNDRGN/0007', N'2021-09-19 14:23:59', 1, 2, 5)
INSERT INTO [dbo].[customerOrder] ([Id], [OrderReference], [OrderDate], [OrderType], [OrderStatus], [qty]) VALUES (9, N'CHNDRGN/0008', N'2021-09-19 14:23:59', 1, 2, 5)
INSERT INTO [dbo].[customerOrder] ([Id], [OrderReference], [OrderDate], [OrderType], [OrderStatus], [qty]) VALUES (10, N'CHNDRGN/0009', N'2021-09-19 14:23:59', 1, 2, 5)
INSERT INTO [dbo].[customerOrder] ([Id], [OrderReference], [OrderDate], [OrderType], [OrderStatus], [qty]) VALUES (11, N'CHNDRGN/0010', N'2021-09-19 14:23:59', 1, 3, 5)
SET IDENTITY_INSERT [dbo].[customerOrder] OFF
