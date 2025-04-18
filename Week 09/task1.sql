CREATE TABLE Product
(
	model char(4),
	maker char(1),
	type varchar(7),
);

CREATE TABLE Printer
(
	code INTEGER,
	model char(4),
	price DECIMAL(18,2)
);

INSERT INTO Printer
VALUES(1000, 'pr01', 299.99)
INSERT INTO Printer
VALUES(1001, 'pr02', 399.99)
INSERT INTO Printer
VALUES(1002, 'pr03', 499.99)

INSERT INTO Product
VALUES('pr01', 'A', 'Printer')
INSERT INTO Product
VALUES('pr02', 'B', 'Printer')
INSERT INTO Product
VALUES ('pr03', 'C', 'Printer')

ALTER TABLE PRINTER
ADD type VARCHAR(6) CHECK (type IN ('laser', 'matrix', 'jet')),
color CHAR(1) DEFAULT 'n' CHECK (color IN ('y', 'n'))

ALTER TABLE PRINTER DROP COLUMN PRICE

DELETE FROM PRINTER
DELETE FROM PRODUCT
