-- change height and weight from an integer to a decimal

ALTER TABLE patients
ALTER COMLUMN weight TYPE NUMERIC (4,1),
ALTER COMLUMN weight TYPE NUMERIC (3,1);
