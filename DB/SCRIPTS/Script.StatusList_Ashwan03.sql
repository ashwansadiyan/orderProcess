CREATE TABLE [dbo].[customerOrderDetails] (
    [Id]              INT           NOT NULL,
    [LineId]          INT           NOT NULL,
    [ItemCode]        NVARCHAR (20) NOT NULL,
    [ItemDescription] NVARCHAR (50) NOT NULL,
    [qty]             INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC, [LineId] ASC),
    CONSTRAINT [FK_PersonOrder] FOREIGN KEY ([Id]) REFERENCES [dbo].[customerOrder] ([Id])
);



INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (2, 2, N'CHCHKN', N'Chilli Chicken Curry', 2)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (2, 3, N'SPCYNDL', N'Spicy Noodles', 3)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (3, 1, N'SFRICE', N'Sea food rice', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (3, 2, N'CHCHKN', N'Chilli Chicken Curry', 2)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (3, 3, N'SCPYNDL', N'Spicy Noodles', 3)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (4, 1, N'SFRICE', N'Sea food rice', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (4, 2, N'CHCHKN', N'Chilli Chicken Curry', 2)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (4, 3, N'SCPYNDL', N'Spicy Noodles', 3)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (5, 1, N'SFRICE', N'Sea food rice', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (5, 2, N'CHCHKN', N'Chilli Chicken Curry', 2)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (5, 3, N'SCPYNDL', N'Spicy Noodles', 3)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (6, 1, N'SCPYNDL', N'Spicy Noodles', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (6, 2, N'CHCHKN', N'Chilli Chicken Curry', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (6, 3, N'SFRICE', N'Sea food rice', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (7, 1, N'SCPYNDL', N'Spicy Noodles', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (7, 2, N'CHCHKN', N'Chilli Chicken Curry', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (7, 3, N'SFRICE', N'Sea food rice', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (8, 1, N'SCPYNDL', N'Spicy Noodles', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (8, 2, N'CHCHKN', N'Chilli Chicken Curry', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (8, 3, N'SFRICE', N'Sea food rice', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (9, 1, N'SCPYNDL', N'Spicy Noodles', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (9, 2, N'CHCHKN', N'Chilli Chicken Curry', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (9, 3, N'SFRICE', N'Sea food rice', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (10, 1, N'SCPYNDL', N'Spicy Noodles', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (10, 2, N'CHCHKN', N'Chilli Chicken Curry', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (10, 3, N'SFRICE', N'Sea food rice', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (11, 1, N'SCPYNDL', N'Spicy Noodles', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (11, 2, N'CHCHKN', N'Chilli Chicken Curry', 1)
INSERT INTO [dbo].[customerOrderDetails] ([Id], [LineId], [ItemCode], [ItemDescription], [qty]) VALUES (11, 3, N'CHCHKN', N'Chilli Chicken Curry', 1)
