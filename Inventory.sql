-------------------------Create databese and table-------------------
CREATE DATABASE KALBE

USE KALBE

CREATE TABLE Inventory(
Item_code INT PRIMARY KEY,
Item_name VARCHAR(255) UNIQUE,
Item_price DECIMAL(10, 2),
Item_total INT
)

----------------------------------Insert data------------------------
INSERT INTO Inventory (Item_code,Item_name,Item_price,Item_total)
VALUES (2341, 'Promag Tablet',3000,100),
	   (2342, 'Hydro Coco 250ML', 7000 ,20),
	   (2343, 'Nutrive Benecol 100ML', 20000, 30),
	   (2344, 'Blackmores Vit C 500Mg', 95000, 45),
	   (2345, 'Entrasol Gold 370G', 90000, 120)

select * from Inventory

------------------------------Show Item_name with the highest of Item_total----------------------
Select Item_name FROM Inventory WHERE Item_total = (SELECT MAX(Item_total) FROM Inventory)

----------------------------Update Item_Price----------------------------------
UPDATE Inventory SET Item_price = 5000 WHERE Item_name = 'Hydro Coco 250ML'

select*from Inventory

------What if Duplicate PK-----
--INSERT INTO Inventory (Item_code,Item_name,Item_price,Item_total)
--VALUES (2343, 'Zee', 40000, 30)

----------------Delete Item_name that has lowest number of Item_total--------
DELETE FROM Inventory WHERE Item_total = (SELECT MIN(Item_total) FROM Inventory)

Select * from Inventory
	   




