
------------------------------------------

SELECT product.maker, laptop.speed
FROM product, laptop
WHERE product.type='laptop' AND
laptop.model = product.model AND
laptop.hd > 9

------------------------------------------

SELECT laptop.model, laptop.price
FROM product, laptop
WHERE product.type='laptop' AND
product.model=laptop.model AND
product.maker='B'

UNION

SELECT pc.model, pc.price
FROM product, pc
WHERE product.type='pc' AND
product.model=pc.model AND
product.maker='B'

UNION

SELECT printer.model, printer.price
FROM product, printer
WHERE product.type='printer' AND
product.model=printer.model AND
product.maker='B'

------------------------------------------

SELECT DISTINCT maker
FROM product
WHERE type='laptop'

EXCEPT

SELECT DISTINCT maker
FROM product
WHERE type='pc'

------------------------------------------

SELECT DISTINCT PC1.hd
FROM pc AS PC1, pc AS PC2
WHERE PC1.code != PC2.code AND
PC1.hd=PC2.hd

------------------------------------------

SELECT PC1.model, PC2.model
FROM pc AS PC1, pc AS PC2
WHERE PC1.model != PC2.model AND 
PC1.model < PC2.model AND
PC1.speed=PC2.speed AND
PC1.ram=PC2.ram

------------------------------------------

SELECT DISTINCT P1.maker
FROM product AS P1, product AS P2,
pc AS PC1, pc AS PC2
WHERE P1.model=PC1.model AND
P2.model=PC2.model AND
PC1.code!=PC2.code AND
P1.maker=P2.maker AND
PC1.speed>=400 AND
PC2.speed>=400