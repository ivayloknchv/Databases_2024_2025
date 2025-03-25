SELECT PRODUCT.model, laptop.code, laptop.screen
FROM PRODUCT JOIN laptop ON PRODUCT.model=laptop.model
WHERE PRODUCT.type='laptop'
GROUP BY PRODUCT.model, laptop.code, laptop.screen
HAVING laptop.screen=11 OR laptop.screen=15

SELECT DISTINCT PC.model
FROM PC JOIN PRODUCT ON PC.model=PRODUCT.model
WHERE EXISTS (SELECT laptop.price 
FROM laptop JOIN product AS p ON laptop.model=p.model
WHERE p.maker=product.maker) AND PC.price<ALL(SELECT laptop.price 
FROM laptop JOIN product AS p ON laptop.model=p.model
WHERE p.maker=product.maker)

SELECT PC.model, AVG(PC.PRICE) AS AVG_PRICE
FROM PC JOIN product ON PC.model=product.model
GROUP BY PC.model, PRODUCT.maker
HAVING AVG(PC.PRICE)<(
SELECT MIN(LAPTOP.price) 
FROM LAPTOP JOIN product AS P ON laptop.model=P.model 
WHERE P.maker=PRODUCT.maker)

SELECT P.code, PRODUCT.maker, 
(SELECT COUNT(DISTINCT PC.code) FROM PC WHERE PC.price>=P.PRICE) AS Count
FROM PC AS P JOIN PRODUCT ON P.model=PRODUCT.model
ORDER BY Count