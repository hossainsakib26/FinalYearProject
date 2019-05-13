
CREATE TABLE [dbo].[AUTHOR] (
    [Id]          INT          IDENTITY (201, 1) NOT NULL,
    [AuthorName]  VARCHAR (50) NULL,
    [DateOfBirth] DATE         NULL,
    [Address]     VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[Category] (
    [Id]           INT          IDENTITY (1, 1) NOT NULL,
    [CategoryName] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

CREATE TABLE [dbo].[SubCategory] (
    [Id]              INT          IDENTITY (101, 1) NOT NULL,
    [SubCategoryName] VARCHAR (50) NULL,
    [CategoryId]      INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_SubCategory_Category] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id])
);

CREATE TABLE [dbo].[Publisher] (
    [Id]            INT          IDENTITY (301, 1) NOT NULL,
    [PublisherName] VARCHAR (50) NULL,
    [PhoneNumber]   VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);



CREATE TABLE [dbo].[User] (
    [UserId]    INT          IDENTITY (101, 1) NOT NULL,
    [FirstName] VARCHAR (50) NULL,
    [LastName]  VARCHAR (50) NULL,
    [Gender]    VARCHAR (50) NULL,
    [Email]     VARCHAR (50) NULL,
    [Password]  VARCHAR (50) NULL,
    [UserRole]  VARCHAR (50) NULL,
    [UserPhone] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([UserId] ASC),
    UNIQUE NONCLUSTERED ([Email] ASC)
);



CREATE TABLE [dbo].[Books] (
	[BookId]          INT          IDENTITY (201, 1) NOT NULL,
    [ISBN]          VARCHAR (50) NOT NULL,
    [BookName]      VARCHAR (50) NULL,
    [CategoryId]    INT          NULL,
    [SubCategoryID] INT          NULL,
    [Image]         IMAGE        NULL,
    [Price]         MONEY        NULL,
    [PublisherId]   INT          NULL,
    [AuthorId]      INT          NULL,
    [PublishDate]   DATE         NULL,
    [Quantity]      INT          NULL,
    [Total]         AS           ([Price] * [Quantity]),
    PRIMARY KEY CLUSTERED ([BookId] ASC),
    CONSTRAINT [FK_Books_Category] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id]),
    CONSTRAINT [FK_Books_SubCategory] FOREIGN KEY ([SubCategoryID]) REFERENCES [dbo].[SubCategory] ([Id]),
    CONSTRAINT [FK_Books_Author] FOREIGN KEY ([AuthorId]) REFERENCES [dbo].[AUTHOR] ([Id]),
    CONSTRAINT [FK_Books_Publisher] FOREIGN KEY ([PublisherId]) REFERENCES [dbo].[Publisher] ([Id])
);

CREATE TABLE [dbo].[Stocks] (
    [StockId]       INT          IDENTITY (1, 1) NOT NULL,
    [BookISBN]      VARCHAR (50) NULL,
    [Quantity]      INT          NULL,
    [SubCategoryId] INT          NULL,
    [CategoryId]    INT          NULL,
    PRIMARY KEY CLUSTERED ([StockId] ASC),
    CONSTRAINT [FK_Stocks_Category] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id]),
    CONSTRAINT [FK_Stocks_SubCategory] FOREIGN KEY ([SubCategoryId]) REFERENCES [dbo].[SubCategory] ([Id])
);

CREATE TABLE [dbo].[Orders] (
    [OrderId]        INT          IDENTITY (1, 1) NOT NULL,
    [OrderDate]      DATE         NULL,
    [GrandTotal]     MONEY        NULL,
    [UserId]         INT          NULL,
    [UserName]       VARCHAR (50) NULL,
    [DeliveryStatus] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([OrderId] ASC),
    CONSTRAINT [FK_Orders_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId])
);

CREATE TABLE [dbo].[Order_Details] (
    [OrderDetailsId] INT          IDENTITY (1, 1) NOT NULL,
    [BookISBN]       VARCHAR (50) NULL,
    [BookName]       VARCHAR (50) NULL,
    [SalesQuantity]  INT          NULL,
    [SalesPrice]     MONEY        NULL,
    [SalesTotal]     MONEY        NULL,
    [OrderID]        INT          NULL,
    PRIMARY KEY CLUSTERED ([OrderDetailsId] ASC),
    CONSTRAINT [FK_Order_Details_Orders] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderId])
);




CREATE TABLE [dbo].[Shipping] (
    [ShippingId]            INT           IDENTITY (10001, 1) NOT NULL,
    [UserId]                INT           NULL,
    [ShippingAddress]       VARCHAR (MAX) NULL,
    [ReceivingPersonName]   VARCHAR (50)  NULL,
    [ReceivingPersonNumber] VARCHAR (50)  NULL,
    [OrderId]               INT           NULL,
    [DeliveryProcess]       VARCHAR (50)  NULL,
    PRIMARY KEY CLUSTERED ([ShippingId] ASC),
    CONSTRAINT [FK_Shipping_Orders] FOREIGN KEY ([OrderId]) REFERENCES [dbo].[Orders] ([OrderId]),
    CONSTRAINT [FK_Shipping_User] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User] ([UserId])
);

