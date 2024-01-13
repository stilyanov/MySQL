CREATE DATABASE Movies;

CREATE TABLE directors (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    director_name VARCHAR(50) NOT NULL,
    notes TEXT
);

INSERT INTO directors(director_name, notes)
VALUES	("director1", "notes notes2 notes3"),
		("director2", "notes4 notes5 notes6"),
        ("director3", "notes7 notes8 notes9"),
        ("director4", "notes10 notes12 notes13"),
        ("director5", "notes14 notes22 notes43");

CREATE TABLE genres (
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    genre_name VARCHAR(50) NOT NULL,
    notes TEXT
);

INSERT INTO genres(genre_name, notes)
VALUES	("genre1", "notes notes2 notes3"),
		("genre2", "notes4 notes5 notes6"),
        ("genre3", "notes7 notes8 notes9"),
        ("genre4", "notes10 notes12 notes13"),
        ("genre5", "notes14 notes22 notes43");
        
CREATE TABLE categories(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL,
    notes TEXT
);

INSERT INTO categories(category_name, notes)
VALUES	("category1", "notes notes2 notes3"),
		("category2", "notes4 notes5 notes6"),
        ("category3", "notes7 notes8 notes9"),
        ("category4", "notes10 notes12 notes13"),
        ("category5", "notes14 notes22 notes43");
        
CREATE TABLE movies(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    director_id INT,
    copyright_year YEAR,
    length TIME,
    genre_id INT,
    category_id INT,
    rating DOUBLE,
    notes TEXT
);

INSERT INTO movies (title)
VALUES	("Movie1"),
		("Movie2"),
		("Movie3"),
		("Movie4"),
		("Movie5");
