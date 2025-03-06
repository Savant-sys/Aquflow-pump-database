USE Local_Pump_Info;
SELECT * FROM pumps;
SHOW COLUMNS FROM pumps;
SELECT pump_price FROM pumps;

SELECT DISTINCT Liquid_End_Material FROM pumps;

SELECT pump_price, tefc_price, xpfc_price, hp_adder_price 
FROM pumps 
WHERE pump_price IS NOT NULL 
LIMIT 10;

SELECT COUNT(*) FROM pumps;


SELECT COUNT(*) FROM pumps WHERE pump_price IS NULL;

UPDATE pumps 
SET pump_price = (SELECT AVG(pump_price) FROM pumps WHERE pump_price IS NOT NULL) 
WHERE pump_price IS NULL;

SELECT COUNT(*) FROM pumps WHERE pump_price IS NULL;
SELECT * FROM pumps WHERE pump_price IS NULL OR tefc_price IS NULL;

TRUNCATE pumps;