CREATE DATABASE minions;

CREATE TABLE minions(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    age INT
);

CREATE TABLE towns(
	town_id INT PRIMARY KEY,
    name VARCHAR(255)
);