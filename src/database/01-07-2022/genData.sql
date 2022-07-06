USE HCMUS_OnlineShopping

INSERT INTO VENDOR (ID, Name)
VALUES 
  ('VD01', 'BHX'),
  ('VD02', 'WM'),
  ('VD03', 'BC'),
  ('VD04', 'COM'),
  ('VD05', 'M'),
  ('VD06', 'AEM'),
  ('VD07', 'MXM'),
  ('VD08', 'NAK'),
  ('VD09', 'OPA'),
  ('VD10', 'QLA');

INSERT INTO CATEGORY
VALUES
  ('C1', 'Meat'),
  ('C2', 'Fish'),
  ('C3', 'Seafood'),
  ('C4', 'Vegetables'),
  ('C5', 'Fruits'),
  ('C6', 'Rice');


BULK INSERT dbo.PRODUCT
FROM 'G:\products.csv'
WITH
(
    DATAFILETYPE = 'char',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0X0A',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT dbo.[ORDER]
FROM 'G:\orders.csv'
WITH
(
    DATAFILETYPE = 'char',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0X0A',
    FIRSTROW = 2,
    TABLOCK
);

BULK INSERT dbo.ORDER_INFO
FROM 'G:\orders_info.csv'
WITH
(
    DATAFILETYPE = 'char',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0X0A',
    FIRSTROW = 2,
    TABLOCK
);

-- Use BULK INSERT FROM CSV FILE
-- INSERT INTO [ORDER] (TotalPrice)
-- VALUES

INSERT INTO VENDOR_FEE
VALUES
('VD01', 12, 2016, 7000),
('VD02', 7, 2017, 10000),
('VD03', 5, 2015, 15000),
('VD04', 6, 2014, 12000),
('VD05', 12, 2017, 11000),
('VD06', 11, 2017, 13000),
('VD07', 8, 2017, 10000),
('VD08', 9, 2016, 8000),
('VD09', 12, 2016, 8500),
('VD10', 11, 2013, 4000);
  