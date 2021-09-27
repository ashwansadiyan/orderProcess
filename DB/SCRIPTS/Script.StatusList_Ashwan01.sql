CREATE TABLE [dbo].[StatusList] (
    [StateId]     INT           NOT NULL,
    [OrderStatus] NVARCHAR (15) NOT NULL,
    PRIMARY KEY CLUSTERED ([StateId] ASC)
);

INSERT INTO [dbo].[StatusList] ([StateId], [OrderStatus]) VALUES (1, N'In Queue')
INSERT INTO [dbo].[StatusList] ([StateId], [OrderStatus]) VALUES (2, N'Preparing')
INSERT INTO [dbo].[StatusList] ([StateId], [OrderStatus]) VALUES (3, N'Prepared')
INSERT INTO [dbo].[StatusList] ([StateId], [OrderStatus]) VALUES (4, N'Picked Up')
INSERT INTO [dbo].[StatusList] ([StateId], [OrderStatus]) VALUES (5, N'Hold')
INSERT INTO [dbo].[StatusList] ([StateId], [OrderStatus]) VALUES (6, N'Cancelled')
