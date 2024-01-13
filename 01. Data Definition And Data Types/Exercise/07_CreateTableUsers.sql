CREATE TABLE users (
	id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(30) NOT NULL,
    password VARCHAR(26) NOT NULL,
    profile_picture BLOB,
    last_login_time TIME,
    is_deleted BOOL
);

INSERT INTO users (username, password)
VALUES	("admin", "admin123"),
		("guest", "guest"),
		("guest2", "guest321"),
		("pesho", "parola"),
        ("guest3", "guest123");
		