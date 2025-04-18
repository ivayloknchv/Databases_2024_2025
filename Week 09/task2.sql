CREATE TABLE Users(
id INT IDENTITY(1,1),
email VARCHAR(50),
password VARCHAR(50),
registrationDate DATE
);

CREATE TABLE FRIENDS(
friend1 INT,
friend2 INT
);

CREATE TABLE Walls(
usr INT,
author INT,
text_message VARCHAR(200),
date DATE
);

CREATE TABLE Groups(
id INT IDENTITY(1,1),
title VARCHAR(50),
description VARCHAR(200) DEFAULT ''
);

CREATE TABLE GroupMembers(
group_id INT,
user_id INT
);

DROP DATABASE Facebook
