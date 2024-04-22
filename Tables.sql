
DROP TABLE Customer1 CASCADE CONSTRAINTS;
DROP TABLE Customer2 CASCADE CONSTRAINTS;
DROP TABLE Product CASCADE CONSTRAINTS;
DROP TABLE Store CASCADE CONSTRAINTS;
DROP TABLE Inventory CASCADE CONSTRAINTS;
DROP TABLE Order1 CASCADE CONSTRAINTS;
DROP TABLE Order2 CASCADE CONSTRAINTS;
DROP TABLE Payment1 CASCADE CONSTRAINTS;
DROP TABLE Payment2 CASCADE CONSTRAINTS;
DROP TABLE Discount CASCADE CONSTRAINTS;

-- Customer1 Table
-- Customer1 Table
CREATE TABLE Customer1 (
    Cus_ID INT,
    Name VARCHAR2(50),
    Contact VARCHAR2(11), -- Change the size to 11 to accommodate phone numbers
    City VARCHAR2(20),
    PRIMARY KEY (Cus_ID)    
);

-- Customer2 Table
CREATE TABLE Customer2 (
    Cus_ID INT,
    Name VARCHAR2(50),
	Contact VARCHAR2(11),
    City VARCHAR2(20),
	PRIMARY KEY (Cus_ID)
);

-- Product Table
CREATE TABLE Product (
    Product_ID INT PRIMARY KEY,
	Name VARCHAR2(15),
	Description VARCHAR2(30),
	Price NUMBER,
    Category VARCHAR2(15)
);

-- Store Table
CREATE TABLE Store (
    Store_ID INT PRIMARY KEY,
	Address VARCHAR2(50),
    City VARCHAR2(20)
);

--INventory Table
CREATE TABLE Inventory (
	Product_ID INT PRIMARY KEY,
	Item VARCHAR2(50),
	Item_Quantity NUMBER,
	Store_ID INT
);	


-- Order1 Table
CREATE TABLE Order1 (
	Transaction_ID INT PRIMARY KEY,
    Order_ID INT,
    Contact VARCHAR2(11),
	Product_ID INT,
	Store_ID INT,
    City VARCHAR2(20) 
	--Date DATE
);

-- Order2 Table
CREATE TABLE Order2 (
	Transaction_ID INT PRIMARY KEY,
    Order_ID INT,
    Contact VARCHAR2(11),
	Product_ID INT,
	Store_ID INT,
    City VARCHAR2(20) 
	--Date DATE
);

-- Payment1 Table (assumINg it's associated with Store1 IN Dhaka)
CREATE TABLE Payment1 (
    Payment_ID INT PRIMARY KEY,
    Contact VARCHAR2(11),
	Total_Amount NUMBER,
	City VARCHAR2(20) 	
);

-- Payment2 Table (assumINg it's associated with Store2 IN Chattogram)
CREATE TABLE Payment2 (
    Payment_ID INT PRIMARY KEY,
    Contact VARCHAR2(11),
	Total_Amount NUMBER,
	City VARCHAR2(20) 	
);

--Discount Table 
CREATE TABLE Discount (
	Dis_ID INT PRIMARY KEY,
	Cus_ID INT,
	Frequency NUMBER
);


--INsert Values
-- INsert queries for Customer1 table
INSERT INTO Customer1 VALUES (1, 'Amina', '01713805111', 'Dhaka');

INSERT INTO Customer1 VALUES (2,'Rahim', '01779202226', 'Dhaka');

INSERT INTO Customer1 VALUES (3,'Farhana', '01733357933', 'Dhaka');

INSERT INTO Customer1 VALUES (4,'Jamal', '01744109344', 'Dhaka');

INSERT INTO Customer1 VALUES (5,'Nasreen', '01758930555', 'Dhaka');


-- INsert queries for Customer2 table
INSERT INTO Customer2 VALUES (1,'Hasan', '01811859311', 'Chattogram');

INSERT INTO Customer2 VALUES (2,'Anika', '01820367222', 'Chattogram');

INSERT INTO Customer2 VALUES (3,'Sohel', '01833683033', 'Chattogram');

INSERT INTO Customer2 VALUES (4,'Tasnim', '01844443759', 'Chattogram');

INSERT INTO Customer2 VALUES (5,'Imran', '01855553859', 'Chattogram');


-- INsert queries for Payment1 table
INSERT INTO Payment1 VALUES (3001, 018555538509, 1750, 'Dhaka');

INSERT INTO Payment1 VALUES (3002, 01820367222, 910, 'Dhaka');

INSERT INTO Payment1 VALUES (3003, 01709396800, 2700, 'Dhaka');

INSERT INTO Payment1 VALUES (3004, 01673890224, 500, 'Dhaka');

INSERT INTO Payment1 VALUES (3005, 01853856790, 2700, 'Dhaka');


-- INsert queries for Payment2 table
INSERT INTO Payment2 VALUES (4001, 01653483993, 2100, 'Chattogram');

INSERT INTO Payment2 VALUES (4002, 01785679800, 1365, 'Chattogram');

INSERT INTO Payment2 VALUES (4003, 01624589200, 1080, 'Chattogram');

INSERT INTO Payment2 VALUES (4004, 01709396700, 500, 'Chattogram');

INSERT INTO Payment2 VALUES (4005, 01709397600, 2160, 'Chattogram');



-- INsert queries for Product table
INSERT INTO Product VALUES (1,'Club Sandwich', 'Chicken', 350, 'Beverage');

INSERT INTO Product VALUES (2,'Hazelnut Latte', 'Flavoured and Strong', 455, 'Food');

INSERT INTO Product VALUES (3,'Americano', 'Pure Black', 180, 'Food');

INSERT INTO Product VALUES (4,'Bottled Water', 'Natural mINeral water', 25, 'Beverage');

INSERT INTO Product VALUES (5,'Crossiant', 'Chocolate Filled Crossiant', 270, 'Beverage');


-- INsert queries for Store table
INSERT INTO Store VALUES (1, '12 Love Road', 'Dhaka');

INSERT INTO Store VALUES (2, '45, Gulshan Avenue', 'Dhaka');

INSERT INTO Store VALUES (3, '78 Noya Road', 'Chattogram');

INSERT INTO Store VALUES (4, '98/A Halishahar', 'Chattogram');

INSERT INTO Store VALUES (5, '6/78 RubINa Nagar Area', 'Chattogram');


-- INsert queries for INventory table
INSERT INTO Inventory VALUES (1, 'Club Sandwich', 100, 1);

INSERT INTO Inventory VALUES (2, 'Hazelnut Latte', 50, 2);

INSERT INTO Inventory VALUES (3, 'Americano', 20, 3);

INSERT INTO Inventory VALUES (4, 'Bottled Water', 150, 4);

INSERT INTO Inventory VALUES (5, 'Crossiant', 75, 5);


-- INsert queries for Order1 table
INSERT INTO Order1 VALUES (1001, 2, 1, 1, 1, 'Dhaka');

INSERT INTO Order1 VALUES (1002, 2, 5, 2, 5, 'Dhaka');

INSERT INTO Order1 VALUES (1003, 1,  3, 3, 3, 'Dhaka');
 
INSERT INTO Order1 VALUES (1004, 1, 2, 1, 4, 'Dhaka');

INSERT INTO Order1 VALUES (1005, 1, 1, 5, 5, 'Dhaka');


-- INsert queries for Order2 table
INSERT INTO Order2 VALUES (2001, 3, 1, 1, 1, 'Chattogram');

INSERT INTO Order2 VALUES (2002, 2, 5, 5, 2, 'Chattogram');

INSERT INTO Order2 VALUES (2003, 5, 3, 3, 4, 'Chattogram');

INSERT INTO Order2 VALUES (2004, 2, 3, 3, 4, 'Chattogram');

INSERT INTO Order2 VALUES (2005, 1, 2, 5, 5, 'Chattogram');


-- INsert queries for Discount table
INSERT INTO Discount VALUES (1, 1, 3);

INSERT INTO Discount VALUES (2, 2, 2);

INSERT INTO Discount VALUES (3, 3, 5);

INSERT INTO Discount VALUES (4, 4, 7);

INSERT INTO Discount VALUES (5, 5, 9);

commit;

