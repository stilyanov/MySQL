CREATE TABLE mountains(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE peaks(
	id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	mountain_id INT,
	CONSTRAINT fk_peak_mountain
	FOREIGN KEY (mountain_id)
	REFERENCES mountains(id)
);