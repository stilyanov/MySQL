CREATE TABLE cities(
	city_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE customers(
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50),
	birthday DATE,
	city_id INT,
	CONSTRAINT fk_customer_city
	FOREIGN KEY (city_id)
	REFERENCES cities(city_id)
);

CREATE TABLE orders(
	order_id INT AUTO_INCREMENT PRIMARY KEY,
	customer_id INT,
	CONSTRAINT fk_order_customer
	FOREIGN KEY (customer_id)
	REFERENCES customers(customer_id)
);

CREATE TABLE item_types(
	item_type_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50)
);

CREATE TABLE items(
	item_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50),
	item_type_id INT,
	CONSTRAINT fk_item_type
	FOREIGN KEY (item_type_id)
	REFERENCES item_types(item_type_id)
);

CREATE TABLE order_items(
	order_id INT,
	item_id INT,
	CONSTRAINT pk_order_items
	PRIMARY KEY (order_id, item_id),
	CONSTRAINT fk_order_items
	FOREIGN KEY (order_id)
	REFERENCES orders(order_id),
	CONSTRAINT fk_items_order
	FOREIGN KEY (item_id)
	REFERENCES items(item_id)
);