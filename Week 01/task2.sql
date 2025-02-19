SELECT model AS MODEL, speed AS MHZ, hd AS GB
from pc WHERE price < 1200

SELECT DISTINCT maker AS MAKER
FROM product WHERE type='printer'

SELECT model AS MODEL, ram AS RAM, screen as SCREEN
FROM laptop WHERE price > 1000

SELECT *
FROM printer WHERE color='y'

SELECT model AS MODEL, speed AS SPEED, hd as HD
FROM pc WHERE price < 2000 AND cd IN ('12x', '16x') 