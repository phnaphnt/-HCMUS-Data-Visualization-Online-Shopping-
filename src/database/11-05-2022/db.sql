use HCMUS_OnlineShopping
go

CREATE TABLE VENDOR (
    ID varchar(36) not null primary key,
    Name varchar(100),
    Address varchar(100),
    PhoneNumber varchar(100),
    StaffName varchar(100),
    ImgUrl varchar(100),
    OpenTime DateTime,
    FoundingTime DateTime,
    Status bit,
    Fee decimal null,
);

CREATE TABLE CATEGORY (
    ID varchar(36) not null primary key,
    Name varchar(100),
);

CREATE TABLE VENDOR_TO_CATEGORY (
    VendorID varchar(36) not null,
    CategoryID varchar(36) not null,
    CONSTRAINT PK_VENDOR_TO_CATEGORY PRIMARY KEY (VendorID,CategoryID),
    FOREIGN KEY (VendorID) REFERENCES VENDOR(ID),
    FOREIGN KEY (CategoryID) REFERENCES CATEGORY(ID),
);

CREATE TABLE PRODUCT (
    ID varchar(36) not null primary key,
    CategoryID varchar(36),
    VendorID varchar(36),
    Name varchar(100),
    ImgUrl varchar(100),
    Price decimal,
    Detail varchar(100),
    Amount integer,
    FOREIGN KEY (CategoryID) REFERENCES CATEGORY(ID),
    FOREIGN KEY (VendorID) REFERENCES VENDOR(ID),
);

CREATE TABLE ORDER_STATUS (
    ID integer not null primary key,
    Content varchar(100)
);

CREATE TABLE ORDERINFO (
    ID varchar(36) not null primary key,
    ProductID varchar(36),
    CustomerID nvarchar(128),
    Status integer,
    Quantity integer,
    Fee decimal DEFAULT 5,
    FOREIGN KEY (ProductID) REFERENCES PRODUCT(ID),
    FOREIGN KEY (CustomerID) REFERENCES AspNetUsers(ID), 
	FOREIGN KEY (Status) REFERENCES ORDER_STATUS(ID), 
);

create table USERINFO (
	UserId nvarchar(128),
	Job varchar(100),
	Birthday datetime,
	FOREIGN KEY (UserId) REFERENCES AspNetUsers(ID), 
);