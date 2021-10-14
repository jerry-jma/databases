CREATE DATABASE chat;

USE chat;

CREATE TABLE users (
  id INT(6) AUTO_INCREMENT,
  name VARCHAR(100),
  PRIMARY KEY(id)
);

CREATE TABLE room (
  id INT AUTO_INCREMENT,
  roomname VARCHAR(250),
  PRIMARY KEY(id)
)

-- DROP TABLE IF EXISTS messages;

CREATE TABLE messages (
  id INT AUTO_INCREMENT,
  text VARCHAR(250),
  created_at VARCHAR(50),
  roomname_id INT,
  user_id INT,
  FOREIGN KEY(roomname_id) REFERENCES room(id),
  FOREIGN KEY(user_id) REFERENCES users(id),
  PRIMARY KEY(id)
);



/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/





-- CREATE TABLE users (
--   'id' INT AUTO_INCREMENT,
--   'name' VARCHAR(255),
--   PRIMARY KEY('id')
-- );

-- CREATE TABLE room (
--   'id' INT AUTO_INCREMENT,
--   'roomname' VARCHAR(255),
--   PRIMARY KEY ('id')
-- )

-- CREATE TABLE messages (
--   /* Describe your table here.*/
--   'id' INT AUTO_INCREMENT,
--   'createdAt' DATE,
--   'text' VARCHAR(255),
--   'roomname' VARCHAR(255),
--   'userId' VARCHAR(255),
--   FOREIGN KEY ('roomname') REFERENCES room ('id'),
--   FOREIGN KEY ('userId') REFERENCES users ('id'),
--   PRIMARY KEY('id')
-- );

