
CREATE OR REPLACE TRIGGER CheckInventory
AFTER UPDATE
OF Item_Quantity 
ON Inventory
FOR EACH ROW
DECLARE
    ProductID Inventory.Product_ID%TYPE;
    ProductQuantity Inventory.Item_Quantity%TYPE;

BEGIN
    -- Get the product ID and quantity of the ordered product
	SELECT Item_Quantity
	INTO ProductQuantity
	FROM Inventory
	WHERE Product_ID = Product_ID;

    IF ProductQuantity < 20 THEN
       DBMS_OUTPUT.PUT_LINE('Restock inventory for Product ID ');
    END IF;
END CheckInventory;
/