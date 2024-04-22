
CREATE OR REPLACE FUNCTION Item1(
q IN NUMBER,
NeworderID IN Order1.Order_ID%TYPE,
p_contact_number IN Customer1.Contact%TYPE, 
p_city IN Customer1.City%TYPE, 
p_store_id IN Store.Store_ID%TYPE)
RETURN NUMBER
IS
	amount Product.Price%TYPE:=0;
	unit Product.Price%TYPE:=0;
	quan NUMBER:=0;
	
	TID Order1.Transaction_ID%TYPE:=0;
	NewTID Order1.Transaction_ID%TYPE:=0;
	
BEGIN 

	IF q=0 THEN
		RETURN 0;
	END IF;
		
	SELECT Price into unit FROM Product WHERE Product_ID= 1;
			
	amount:= amount + (unit*q);
	
	SELECT Item_Quantity into quan FROM Inventory 
	WHERE Product_ID = 1;
	quan:= quan-q;
	
	UPDATE Inventory SET Item_Quantity = quan
	WHERE Product_ID = 1;
	IF quan<20 THEN
		DBMS_OUTPUT.PUT_LINE('RESTOCK NEEDED FOR ITEM 1');
	END IF;
	
		
	IF p_city='Dhaka' THEN
		SELECT MAX(Transaction_ID) INTO TID FROM Order1;
		NewTID:= TID+1;
		INSERT INTO Order1 VALUES (NewTID, NeworderID, p_contact_number,1, p_store_id, p_city);
	END IF;
		
	IF p_city='Chattogram' THEN
		SELECT MAX(Transaction_ID) INTO TID FROM Order2;
		NewTID:= TID+1;
		INSERT INTO Order2 VALUES (NewTID, NeworderID, p_contact_number,1, p_store_id, p_city);
	END IF;
	
	RETURN amount;
END Item1; 
/


CREATE OR REPLACE FUNCTION Item2(
q IN NUMBER,
NeworderID IN Order1.Order_ID%TYPE,
p_contact_number IN Customer1.Contact%TYPE, 
p_city IN Customer1.City%TYPE, 
p_store_id IN Store.Store_ID%TYPE)
RETURN NUMBER
IS
	amount Product.Price%TYPE:=0;
	unit Product.Price%TYPE:=0;
	quan NUMBER:=0;
	
	TID Order1.Transaction_ID%TYPE:=0;
	NewTID Order1.Transaction_ID%TYPE:=0;
	
BEGIN 

	IF q=0 THEN
		RETURN 0;
	END IF;
		
	SELECT Price into unit FROM Product WHERE Product_ID= 2;
			
	amount:= amount + (unit*q);
	
	SELECT Item_Quantity into quan FROM Inventory 
	WHERE Product_ID = 2;
	quan:= quan-q;
	
	UPDATE Inventory SET Item_Quantity = quan
	WHERE Product_ID = 2;
	IF quan<20 THEN
		DBMS_OUTPUT.PUT_LINE('RESTOCK NEEDED FOR ITEM 2');
	END IF;
	
		
	IF p_city='Dhaka' THEN
		SELECT MAX(Transaction_ID) INTO TID FROM Order1;
		NewTID:= TID+1;
		INSERT INTO Order1 VALUES (NewTID, NeworderID, p_contact_number,2, p_store_id, p_city);
	END IF;
		
	IF p_city='Chattogram' THEN
		SELECT MAX(Transaction_ID) INTO TID FROM Order2;
		NewTID:= TID+1;
		INSERT INTO Order2 VALUES (NewTID, NeworderID, p_contact_number,2, p_store_id, p_city);
	END IF;
	
	RETURN amount;
END Item2; 
/





CREATE OR REPLACE FUNCTION Item3(
q IN NUMBER,
NeworderID IN Order1.Order_ID%TYPE,
p_contact_number IN Customer1.Contact%TYPE, 
p_city IN Customer1.City%TYPE, 
p_store_id IN Store.Store_ID%TYPE)
RETURN NUMBER
IS
	amount Product.Price%TYPE:=0;
	unit Product.Price%TYPE:=0;
	quan NUMBER:=0;
	
	TID Order1.Transaction_ID%TYPE:=0;
	NewTID Order1.Transaction_ID%TYPE:=0;
	
BEGIN 

	IF q=0 THEN
		RETURN 0;
	END IF;
		
	SELECT Price into unit FROM Product WHERE Product_ID= 3;
			
	amount:= amount + (unit*q);
	
	SELECT Item_Quantity into quan FROM Inventory 
	WHERE Product_ID = 3;
	quan:= quan-q;
	
	UPDATE Inventory SET Item_Quantity = quan
	WHERE Product_ID = 3;
	IF quan<20 THEN
		DBMS_OUTPUT.PUT_LINE('RESTOCK NEEDED FOR ITEM 3');
	END IF;
	
		
	IF p_city='Dhaka' THEN
		SELECT MAX(Transaction_ID) INTO TID FROM Order1;
		NewTID:= TID+1;
		INSERT INTO Order1 VALUES (NewTID, NeworderID, p_contact_number,3, p_store_id, p_city);
	END IF;
		
	IF p_city='Chattogram' THEN
		SELECT MAX(Transaction_ID) INTO TID FROM Order2;
		NewTID:= TID+1;
		INSERT INTO Order2 VALUES (NewTID, NeworderID, p_contact_number,3, p_store_id, p_city);
	END IF;
	
	RETURN amount;
END Item3; 
/


CREATE OR REPLACE FUNCTION Item4(
q IN NUMBER,
NeworderID IN Order1.Order_ID%TYPE,
p_contact_number IN Customer1.Contact%TYPE, 
p_city IN Customer1.City%TYPE, 
p_store_id IN Store.Store_ID%TYPE)
RETURN NUMBER
IS
	amount Product.Price%TYPE:=0;
	unit Product.Price%TYPE:=0;
	quan NUMBER:=0;
	
	TID Order1.Transaction_ID%TYPE:=0;
	NewTID Order1.Transaction_ID%TYPE:=0;
	
BEGIN 

	IF q=0 THEN
		RETURN 0;
	END IF;
		
	SELECT Price into unit FROM Product WHERE Product_ID= 4;
			
	amount:= amount + (unit*q);
	
	SELECT Item_Quantity into quan FROM Inventory 
	WHERE Product_ID = 4;
	quan:= quan-q;
	
	UPDATE Inventory SET Item_Quantity = quan
	WHERE Product_ID = 4;
	commit;
	
	IF quan<20 THEN
		DBMS_OUTPUT.PUT_LINE('RESTOCK NEEDED FOR ITEM 4');
	END IF;
	
		
	IF p_city='Dhaka' THEN
		SELECT MAX(Transaction_ID) INTO TID FROM Order1;
		NewTID:= TID+1;
		INSERT INTO Order1 VALUES (NewTID, NeworderID, p_contact_number,4, p_store_id, p_city);
	END IF;
		
	IF p_city='Chattogram' THEN
		SELECT MAX(Transaction_ID) INTO TID FROM Order2;
		NewTID:= TID+1;
		INSERT INTO Order2 VALUES (NewTID, NeworderID, p_contact_number,4, p_store_id, p_city);
	END IF;
	
	RETURN amount;
END Item4; 
/


CREATE OR REPLACE FUNCTION Item5(
q IN NUMBER,
NeworderID IN Order1.Order_ID%TYPE,
p_contact_number IN Customer1.Contact%TYPE, 
p_city IN Customer1.City%TYPE, 
p_store_id IN Store.Store_ID%TYPE)
RETURN NUMBER
IS
	amount Product.Price%TYPE:=0;
	unit Product.Price%TYPE:=0;
	quan NUMBER:=0;
	
	TID Order1.Transaction_ID%TYPE:=0;
	NewTID Order1.Transaction_ID%TYPE:=0;
	
BEGIN 

	IF q=0 THEN
		RETURN 0;
	END IF;
		
	SELECT Price into unit FROM Product WHERE Product_ID= 5;
			
	amount:= amount + (unit*q);
	
	SELECT Item_Quantity into quan FROM Inventory 
	WHERE Product_ID = 5;
	quan:= quan-q;
	
	UPDATE Inventory SET Item_Quantity = quan
	WHERE Product_ID = 5;
	
	IF quan<20 THEN
		DBMS_OUTPUT.PUT_LINE('RESTOCK NEEDED FOR ITEM 5');
	END IF;
	
		
	IF p_city='Dhaka' THEN
		SELECT MAX(Transaction_ID) INTO TID FROM Order1;
		NewTID:= TID+1;
		INSERT INTO Order1 VALUES (NewTID, NeworderID, p_contact_number,5, p_store_id, p_city);
	END IF;
		
	IF p_city='Chattogram' THEN
		SELECT MAX(Transaction_ID) INTO TID FROM Order2;
		NewTID:= TID+1;
		INSERT INTO Order2 VALUES (NewTID, NeworderID, p_contact_number,5, p_store_id, p_city);
	END IF;
	
	RETURN amount;
END Item5; 
/



CREATE OR REPLACE FUNCTION CalculateDiscount(
	amount Product.Price%TYPE )
RETURN NUMBER
IS
    discounted_amount NUMBER;
BEGIN
   
    -- Apply discount if the total amount is greater than 5000
    IF amount > 500 THEN
        discounted_amount := amount * 0.95; -- 5% discount
    ELSE
        discounted_amount := amount;
    END IF;

    RETURN discounted_amount;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
         DBMS_OUTPUT.PUT_LINE('No Data Found');

END CalculateDiscount;
/


CREATE OR REPLACE PROCEDURE InsertCustomer(
	Name IN Customer1.Name%TYPE,
    p_contact IN Customer1.Contact%TYPE,
    p_city IN Customer1.City%TYPE
)
IS
	NewCID Customer1.Cus_ID%TYPE;
	CID Customer1.Cus_ID%TYPE;
	
BEGIN
    IF p_city = 'Dhaka' THEN
		SELECT MAX(Cus_ID) INTO CID FROM Customer1;
		NewCID:= CID+1;
        INSERT INTO Customer1 VALUES (NewCID, Name, p_contact, p_city);
		
    ELSIF p_city = 'Chattogram' THEN
		SELECT MAX(Cus_ID) INTO CID FROM Customer2;
		NewCID:= CID+1;		
        INSERT INTO Customer2 VALUES (NewCID, Name, p_contact, p_city);
    ELSE
        DBMS_OUTPUT.PUT_LINE('Invalid city input.');
    END IF;
	

END InsertCustomer;
/


CREATE OR REPLACE FUNCTION CheckCustomerExistsByContact(p_contact_number IN Customer1.Contact%TYPE)
RETURN NUMBER
IS

	temp NUMBER:=0;

BEGIN
    -- Check Customer1 table
	
    SELECT COUNT(*)
    INTO temp
    FROM (
        SELECT Contact FROM Customer1
        UNION ALL
        SELECT Contact FROM Customer2
    ) Combined
    WHERE Contact = p_contact_number;

    IF temp > 0 THEN
		RETURN 1;
	ELSE
		RETURN 0;
        --DBMS_OUTPUT.PUT_LINE('Contact number exists in either table. Count: ' || v_count);
    END IF;
		
END CheckCustomerExistsByContact;
/



SET SERVEROUTPUT ON;
SET VERIFY OFF;

SELECT Product_ID,Name,Price FROM Product;


DECLARE
    order_total NUMBER;
	temp_total NUMBER;
	
	temp NUMBER;
	Name Customer1.Name%TYPE:= &Cus_Name;
    customer_contact Customer1.Contact%TYPE:= &Customer_Contact_Number;
	orderCity Customer1.City%TYPE:= &City;
	storeid Store.Store_ID%TYPE:= &Store_ID;
	
	i1 NUMBER:= &i1;
	t1 NUMBER;
	i2 NUMBER:= &i2;
	t2 NUMBER;
	i3 NUMBER:= &i3;
	t3 NUMBER;
	i4 NUMBER:= &i4;
	t4 NUMBER;
	i5 NUMBER:= &i5;
	t5 NUMBER;
	
	payid Payment1.Payment_ID%TYPE:=0;
	Newpayid Payment1.Payment_ID%TYPE:=0;
	
	orderID Order1.Order_ID%TYPE:=0;
	NeworderID Order1.Order_ID%TYPE:=0;
	
BEGIN	
	DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------------');
	temp:= CheckCustomerExistsByContact('0'||customer_contact);
    
	IF temp=0 THEN
		DBMS_OUTPUT.PUT_LINE('Customer does not exist.');
		InsertCustomer(Name,customer_contact,orderCity);
				
    ELSE
        DBMS_OUTPUT.PUT_LINE('Customer exists.');
    END IF;
	
	IF orderCity='Dhaka' THEN
		SELECT MAX(Order_ID) INTO orderID FROM Order1;
		NeworderID:= orderID+1;
	END IF;
	
	IF orderCity='Chattogram' THEN
		SELECT MAX(Order_ID) INTO orderID FROM Order2;
		NeworderID:= orderID+1;
	END IF;
	
	--WHILE a>0 LOOP
	t1:= Item1(i1, NeworderID, customer_contact, orderCity, storeid);
	t2:= Item2(i2, NeworderID, customer_contact, orderCity, storeid);
	t3:= Item3(i3, NeworderID, customer_contact, orderCity, storeid);
	t4:= Item4(i4, NeworderID, customer_contact, orderCity, storeid);
	t5:= Item5(i5, NeworderID, customer_contact, orderCity, storeid);
	
	
    temp_total:= t1+ t2+ t3+ t4+ t5;
	order_total:= CalculateDiscount(temp_total);
	
	
	IF orderCity='Dhaka' THEN
		SELECT MAX(Payment_ID) INTO payid FROM Payment1;
		Newpayid:= payid+1;
		INSERT INTO Payment1 VALUES (Newpayid, customer_contact, order_total, orderCity);
	END IF;
		
	IF orderCity='Chattogram' THEN
		SELECT MAX(Payment_ID) INTO payid FROM Payment2;
		Newpayid:= payid+1;
		INSERT INTO Payment2 VALUES (Newpayid, customer_contact, order_total, orderCity);
	END IF;
	
	DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------------');
	DBMS_OUTPUT.PUT_LINE('Customer Details: ');
	DBMS_OUTPUT.PUT_LINE('Customer Name: '||Name);
	DBMS_OUTPUT.PUT_LINE('Customer Contact Number: '||customer_contact);
	DBMS_OUTPUT.PUT_LINE('Ordered Item');
	
	IF i1>0 THEN
		DBMS_OUTPUT.PUT_LINE(': Club Sandwich');
	END IF;
	IF i2>0 THEN
		DBMS_OUTPUT.PUT_LINE(': Hazelnut Latte');
	END IF;
	IF i3>0 THEN
		DBMS_OUTPUT.PUT_LINE(': Americano');
	END IF;
	IF i4>0 THEN
		DBMS_OUTPUT.PUT_LINE(': Bottled Water');
	END IF;
	IF i5>0 THEN
		DBMS_OUTPUT.PUT_LINE(': Crossiant');
	END IF;
	
	DBMS_OUTPUT.PUT_LINE('Total Price: '||temp_total);
	DBMS_OUTPUT.PUT_LINE('Discount Price: '||order_total);
	DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------------');
	DBMS_OUTPUT.PUT_LINE('Thank You');
END;
/
commit;