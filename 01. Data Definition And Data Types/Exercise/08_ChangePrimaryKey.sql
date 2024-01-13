ALTER TABLE users
DROP PRIMARY KEY,
ADD CONSTRAINT pk_users_id
PRIMARY KEY users (id, username);