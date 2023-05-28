
-- PL/SQL


SET SERVEROUTPUT ON

DECLARE
  med_id medicine.medicine_id%TYPE;
  med_name medicine.name%TYPE;
  med_stock medicine.stock%TYPE;
BEGIN
  SELECT medicine_id, name, stock INTO med_id, med_name, med_stock
  FROM medicine
  WHERE medicine_id = 1; -- Replace with the desired medicine_id

  DBMS_OUTPUT.PUT_LINE('Medicine ID: ' || med_id || ' | Name: ' || med_name || ' | Stock: ' || med_stock);
END;
/




-- Insert and set default value

SET SERVEROUTPUT ON

DECLARE
  medicine_id medicine.medicine_id%TYPE := 11; -- Replace with desired medicine_id
  name medicine.name%TYPE := 'New Medicine';
  stock medicine.stock%TYPE := 50;
BEGIN
  INSERT INTO medicine (medicine_id, name, stock)
  VALUES (medicine_id, name, stock);

  DBMS_OUTPUT.PUT_LINE('New Row inserted successfully.');
END;
/

select * from medicine;



-- Row type

SET SERVEROUTPUT ON

DECLARE
  med_row medicine%ROWTYPE;
BEGIN
  SELECT * INTO med_row FROM medicine WHERE medicine_id = 1; -- Replace with desired medicine_id

  -- Access the individual columns of the fetched row using the variable
  DBMS_OUTPUT.PUT_LINE('Medicine ID: ' || med_row.medicine_id);
  DBMS_OUTPUT.PUT_LINE('Name: ' || med_row.name);
  DBMS_OUTPUT.PUT_LINE('Stock: ' || med_row.stock);
END;
/







-- Cursor and row count

SET SERVEROUTPUT ON

DECLARE
  CURSOR med_cursor IS
    SELECT * FROM medicine;
  
  med_row medicine%ROWTYPE;
BEGIN
  OPEN med_cursor;
  LOOP
    FETCH med_cursor INTO med_row;
    EXIT WHEN med_cursor%NOTFOUND;

    -- Access the individual columns of the fetched row using the variable
    DBMS_OUTPUT.PUT_LINE('Medicine ID: ' || med_row.medicine_id);
    DBMS_OUTPUT.PUT_LINE('Name: ' || med_row.name);
    DBMS_OUTPUT.PUT_LINE('Stock: ' || med_row.stock);
    DBMS_OUTPUT.PUT_LINE('Row count: ' || med_cursor%ROWCOUNT);
  END LOOP;
  CLOSE med_cursor;
END;
/







-- ARRAY

SET SERVEROUTPUT ON

DECLARE
   counter NUMBER := 1;
   med_name2 medicine.name%TYPE;
   TYPE NAMEARRAY IS VARRAY(5) OF medicine.name%TYPE;
   A_NAME NAMEARRAY := NAMEARRAY('Medicine 1', 'Medicine 2', 'Medicine 3', 'Medicine 4', 'Medicine 5'); 
   -- VARRAY with a fixed size of 5 elements and initialized with medicine names
BEGIN
   counter := 1;
   FOR x IN 12..16  
   LOOP
      BEGIN
         SELECT name INTO med_name2 FROM medicine WHERE medicine_id = x;
         A_NAME(counter) := med_name2;
         counter := counter + 1;
      EXCEPTION
         WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No data found for medicine_id ' || x);
      END;
   END LOOP;
   
   counter := 1;
   WHILE counter <= A_NAME.COUNT 
   LOOP 
      DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
      counter := counter + 1;
   END LOOP;
END;
/




-- If else
SET SERVEROUTPUT ON

DECLARE
   counter NUMBER := 1;
   med_name medicine.name%TYPE;
   TYPE NAMEARRAY IS VARRAY(5) OF medicine.name%TYPE;
   A_NAME NAMEARRAY := NAMEARRAY('Medicine 1', 'Medicine 2', 'Medicine 3', 'Medicine 4', 'Medicine 5'); 
   -- VARRAY with a fixed size of 5 elements and initialized with medicine names
BEGIN
   counter := 1 ;
   FOR x IN 7..10  
   LOOP
      SELECT name INTO med_name FROM medicine WHERE medicine_id = x;
      IF med_name = 'Sertraline' THEN
         DBMS_OUTPUT.PUT_LINE(med_name || ' belongs to Department A');
      ELSIF  med_name = 'Metformin' THEN
         DBMS_OUTPUT.PUT_LINE(med_name || ' belongs to Department B');
      ELSE
         DBMS_OUTPUT.PUT_LINE(med_name || ' belongs to Other Department');
      END IF;
   END LOOP;
END;
/

  
  
  
CREATE OR REPLACE PROCEDURE update_stock(
  med_id IN NUMBER,
  new_stock IN NUMBER
)
AS
BEGIN
  UPDATE medicine
  SET stock = new_stock
  WHERE medicine_id = med_id;
  
  DBMS_OUTPUT.PUT_LINE('Stock for medicine with ID ' || med_id || ' updated to ' || new_stock);
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Medicine with ID ' || med_id || ' not found.');
END;
/


DECLARE
  med_id_input NUMBER := 12; -- Provide the medicine ID for which stock needs to be updated
  new_stock_input NUMBER := 50; -- Provide the new stock value
BEGIN
  update_stock(med_id_input, new_stock_input);
END;
/
