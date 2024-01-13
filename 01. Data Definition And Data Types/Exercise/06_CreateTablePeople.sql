CREATE TABLE people (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    picture BLOB,
    height DOUBLE(6 , 2 ),
    weight DOUBLE(6 , 2 ),
    gender CHAR(1) NOT NULL,
    birthdate DATE NOT NULL,
    biography TEXT
);

INSERT INTO people (name, gender, birthdate)
VALUES	("Peter", "M", NOW()),
		("George", "M", NOW()),
        ("Preslava", "F", NOW()),
        ("Gergana", "F", NOW()),
        ("Alexandra", "F", NOW());