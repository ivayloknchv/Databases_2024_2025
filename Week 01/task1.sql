SELECT ADDRESS
FROM STUDIO WHERE NAME='Disney'

SELECT BIRTHDATE
FROM MOVIESTAR WHERE NAME='Jack Nicholson'

SELECT STARNAME
FROM STARSIN WHERE MOVIEYEAR=1980 or MOVIETITLE LIKE '%Knight%'

SELECT NAME
FROM MOVIEEXEC WHERE NETWORTH>10000000

SELECT NAME
FROM MOVIESTAR WHERE GENDER='M' OR ADDRESS='Prefect Rd'