
CREATE DATABASE ThietBiStore;
GO

USE ThietBiStore;
GO

CREATE TABLE SanPham (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName NVARCHAR(100) NOT NULL,
    SupplierID INT NOT NULL DEFAULT 1,
    CategoryID INT NOT NULL DEFAULT 1,
    QuantityPerUnit NVARCHAR(50) NOT NULL DEFAULT N'1 cái',
    UnitPrice DECIMAL(18,2) NOT NULL,
    UnitsInStock INT NOT NULL DEFAULT 0,
    ImageURL VARCHAR(500) NOT NULL
);
GO

INSERT INTO SanPham (ProductName, UnitPrice, UnitsInStock, ImageURL)
VALUES
(N'Laptop Dell Inspiron 15',18000000,15,
'https://images.unsplash.com/photo-1496181133206-80ce9b88a853'),

(N'MacBook Air M2',29000000,10,
'https://images.unsplash.com/photo-1517336714739-489689fd1ca8'),

(N'ASUS ROG Strix G16',33000000,8,
'https://images.unsplash.com/photo-1603302576837-37561b2e2302'),

(N'iPhone 15 Pro Max',35000000,12,
'https://images.unsplash.com/photo-1695048133142-1a20484d2569'),

(N'Samsung Galaxy S24 Ultra',30000000,10,
'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf'),

(N'Xiaomi Redmi Note 13',7000000,25,
'https://images.unsplash.com/photo-1598327105666-5b89351aff97'),

(N'iPad Air M2',19000000,9,
'https://images.unsplash.com/photo-1544244015-0df4b3ffc6b0'),

(N'Samsung Galaxy Tab S9',16000000,7,
'https://images.unsplash.com/photo-1585790050230-5dd28404ccb9'),

(N'Apple Watch Series 9',12000000,15,
'https://images.unsplash.com/photo-1523275335684-37898b6baf30'),

(N'Samsung Galaxy Watch 6',8500000,11,
'https://images.unsplash.com/photo-1579586337278-3f436f25d4d6'),

(N'Tai nghe Sony WH-1000XM5',8500000,20,
'https://images.unsplash.com/photo-1505740420928-5e560c06d30e'),

(N'AirPods Pro 2',6500000,18,
'https://images.unsplash.com/photo-1600294037681-c80b4cb5b434'),

(N'Loa JBL Charge 5',4200000,14,
'https://images.unsplash.com/photo-1589003077984-894e133dabab'),

(N'Màn hình LG UltraGear 27 Inch',7800000,10,
'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf'),

(N'Màn hình Samsung Odyssey G5',9200000,8,
'https://images.unsplash.com/photo-1545239351-1141bd82e8a6'),

(N'Chuột Logitech G Pro X',2500000,25,
'https://images.unsplash.com/photo-1527864550417-7fd91fc51a46'),

(N'Bàn phím Keychron K8',2200000,20,
'https://images.unsplash.com/photo-1511467687858-23d96c32e4ae'),

(N'Webcam Logitech C920',2400000,13,
'https://images.unsplash.com/photo-1587825140708-dfaf72ae4b04'),

(N'SSD Samsung 1TB NVMe',2800000,30,
'https://images.unsplash.com/photo-1591799265444-d66432b91588'),

(N'Router WiFi TP-Link AX3000',1800000,17,
'https://images.unsplash.com/photo-1647427060118-4911c9821b82');
GO

SELECT * FROM SanPham;
GO
