CREATE DATABASE car_rental;

CREATE TABLE categories(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	category VARCHAR(255) NOT NULL,
	daily_rate DOUBLE NOT NULL,
	weekly_rate DOUBLE,
	monthly_rate DOUBLE,
	weekend_rate DOUBLE
);

INSERT INTO categories (category, daily_rate)
VALUES	("Category1", 59.50),
		("Category2", 38.31),
		("Category3", 13.61);
		
CREATE TABLE cars(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	plate_number VARCHAR(255) NOT NULL,
	make VARCHAR(50) NOT NULL,
	model VARCHAR(50) NOT NULL,
	car_year YEAR,
	category_id INT,
	doors INT(1),
	picture BLOB,
	car_condition VARCHAR(25),
	available BOOL,
	FOREIGN KEY fk_cars_category (category_id)
	REFERENCES categories(id)
);

INSERT INTO cars (plate_number, make, model)
VALUES	("CA0000CA", "Audi", "A3"),
		("CA0001CA", "BMW", "M5"),
		("CA0002CA", "MERCEDES", "AMG");
		
CREATE TABLE employees(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	title VARCHAR(100),
	notes TEXT
);

INSERT INTO employees (first_name, last_name)
VALUES	("Stefan", "Stefanov"),
		("Angel", "Stoyanov"),
		("Todor", "Bakalov");
		
CREATE TABLE customers(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	driver_license_number INT NOT NULL,
	full_name VARCHAR(100) NOT NULL,
	address VARCHAR(255) NOT NULL,
	city VARCHAR(20) NOT NULL,
	zip_code INT,
	notes TEXT
);

INSERT INTO customers (driver_license_number, full_name, address, city)
VALUES	(1 , "name1", "address1", "city1"),
		(2 , "name2", "address2", "city2"),
		(3 , "name3", "address3", "city3");
		
CREATE TABLE rental_orders(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	employee_id INT NOT NULL,
	customer_id INT NOT NULL,
	car_id INT NOT NULL,
	car_condition VARCHAR(255),
	tank_level DOUBLE,
	kilometrage_start INT,
	kilometrage_end INT,
	total_kilometrage INT,
	start_date DATE,
	end_date DATE,
	total_days INT,
	rate_applied DOUBLE,
	tax_rate DOUBLE,
	order_status VARCHAR(50),
	notes TEXT
);

INSERT INTO rental_orders (employee_id, customer_id, car_id)
VALUES	(1, 1, 1),
		(2, 2, 2),
		(3, 3, 3);