SELECT CONVERT(DECIMAL(9,2), AVG(speed))
FROM PC

SELECT product.maker, AVG(laptop.screen)
FROM LAPTOP JOIN PRODUCT ON LAPTOP.model=PRODUCT.model
GROUP BY product.maker

SELECT CONVERT(DECIMAL(9,2), AVG(speed))
FROM LAPTOP
WHERE price>1000

SELECT product.maker, CONVERT(DECIMAL(9,2), AVG(pc.price))
FROM PC JOIN PRODUCT ON PC.model=PRODUCT.model
GROUP BY product.maker
HAVING product.maker='A'

SELECT T.maker, AVG(T.price) AS 'AvgPrice'
FROM(
SELECT PRODUCT.maker, PC.price, PC.code
FROM PC JOIN PRODUCT ON PC.model=PRODUCT.model
UNION
SELECT PRODUCT.maker, LAPTOP.price, laptop.code
FROM LAPTOP JOIN PRODUCT ON LAPTOP.model=PRODUCT.model) AS T
GROUP BY T.maker
HAVING T.maker='B'

SELECT speed, AVG(price)
FROM PC
GROUP BY speed

SELECT maker, COUNT(pc.code) AS number_of_pc
FROM PC JOIN PRODUCT ON PC.model=PRODUCT.model
GROUP BY PRODUCT.maker
HAVING COUNT(pc.code) >= 3

SELECT PRODUCT.maker, MAX(PC.price) AS price
FROM PC JOIN PRODUCT ON PC.model=PRODUCT.model
GROUP BY PRODUCT.maker
HAVING MAX(pc.price) >= ALL(SELECT PRICE FROM PC)

SELECT SPEED, AVG(PRICE) AS AvgPrice
FROM PC
GROUP BY SPEED
HAVING SPEED>=800

SELECT maker, CONVERT(DECIMAL(9,0), AVG(pc.hd))
FROM PRODUCT JOIN pc ON product.model=pc.model
WHERE product.maker IN (SELECT maker FROM product WHERE type='printer')
GROUP BY product.maker