/* 
Задание 1
Создайте таблицу с мобильными телефонами
*/
CREATE DATABASE hw_1;
USE hw_1;
CREATE TABLE mobile_phones
(
Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(30) NOT NULL,
ProductCount INT NOT NULL,
Price INT NOT NULL
);

SELECT * FROM mobile_phones;

INSERT mobile_phones(ProductName, Manufacturer, ProductCount, Price)
VALUES
('iPhone X','Apple', 3, 76000),
('iPhone 8','Apple', 2, 51000),
('Galaxy S9','Samsung', 2, 56000),
('Galaxy S8','Samsung', 1, 41000),
('P20 Pro','Huawei', 5, 36000);

SELECT * FROM mobile_phones;

/* 
Задание 2
Выведите название, производителя и цену для товаров, количество которых превышает 2
*/

SELECT ProductName, Manufacturer, Price FROM mobile_phones
WHERE ProductCount > 2;

/*
Задание 3
Выведите весь ассортимент товаров марки "Samsung"
*/

SELECT * FROM mobile_phones
WHERE Manufacturer = 'Samsung';

/*
Задание 4
С помощью регулярный выражений найти:
4.1 Товары, в которых есть упоминание "iPhone"
*/

SELECT * FROM mobile_phones
WHERE ProductName REGEXP 'Iphone' || Manufacturer REGEXP 'Iphone';

-- 4.2 Товары, в которых есть упоминание "Samsung"

SELECT * FROM mobile_phones
WHERE ProductName REGEXP 'Samsung' || Manufacturer REGEXP 'Samsung';

-- 4.3 Товары, в которых есть цифра "8"

SELECT * FROM mobile_phones
WHERE ProductName REGEXP '[[8]]' = 1 || Manufacturer REGEXP '[[8]]' = 1;