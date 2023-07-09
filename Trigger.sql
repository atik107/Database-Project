CREATE OR REPLACE TRIGGER update_stock
AFTER INSERT ON patient_medicine
FOR EACH ROW
BEGIN
  UPDATE medicine
  SET stock = stock - 1
  WHERE medicine_id = :new.medicine_id;
END;
/





CREATE OR REPLACE TRIGGER calculate_bill_amount
BEFORE INSERT ON bill
FOR EACH ROW
BEGIN
  SELECT SUM(stock) * 10
  INTO :new.bill_amount
  FROM medicine
  JOIN patient_medicine ON medicine.medicine_id = patient_medicine.medicine_id
  WHERE patient_medicine.patient_id = :new.patient_id;
END;
/





CREATE OR REPLACE TRIGGER validate_age
BEFORE INSERT ON patient
FOR EACH ROW
BEGIN
  IF :new.age < 0 OR :new.age > 150 THEN
    RAISE_APPLICATION_ERROR(-20001, 'Invalid age');
  END IF;
END;
/
