CREATE TABLE teachers(
	teacher_id INT AUTO_INCREMENT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	manager_id INT
);

INSERT INTO teachers(teacher_id, name, manager_id)
VALUES	(101, 'John', NULL),
		(102, 'Maya', 106),
		(103, 'Silvia', 106),
		(104, 'Ted', 105),
		(105, 'Mark', 101),
		(106, 'Greta', 101);
		
ALTER TABLE teachers 
ADD CONSTRAINT fk_manager_teacher
FOREIGN KEY (manager_id)
REFERENCES teachers(teacher_id);