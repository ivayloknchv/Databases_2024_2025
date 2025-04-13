INSERT INTO PC(code, model, speed, ram, hd, cd, price)
VALUES(12, 1100, 2400, 2048, 500, '52x', 299)

INSERT INTO PRODUCT(maker, model, type)
VALUES('C', 1100, 'PC')

DELETE FROM PC
WHERE MODEL=1100

DELETE FROM LAPTOP
WHERE MODEL IN (
SELECT DISTINCT LAPTOP.MODEL
FROM laptop JOIN PRODUCT ON LAPTOP.model=PRODUCT.model
WHERE PRODUCT.maker NOT IN (SELECT DISTINCT MAKER FROM PRODUCT
WHERE TYPE != 'Printer'))

UPDATE PRODUCT
SET MAKER='A'
WHERE MAKER='B'

UPDATE PC
SET PRICE=PRICE/2 , HD=HD+20

UPDATE LAPTOP
SET SCREEN=SCREEN+1
WHERE MODEL IN (
SELECT MODEL
FROM PRODUCT
WHERE TYPE = 'Laptop' AND
MAKER = 'B')
