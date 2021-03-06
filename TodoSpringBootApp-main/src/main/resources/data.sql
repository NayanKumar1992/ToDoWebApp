DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS Tasks;


CREATE TABLE Users (
  userid INT AUTO_INCREMENT  PRIMARY KEY,
  username VARCHAR(250) NOT NULL,
  password VARCHAR(250) NOT NULL
);
 
INSERT INTO Users (username, password) VALUES
  ('todo', 'todo123'),
  ('test', 'test123'),
  ('password', 'password123'),
  ('goal','goal123');
  
  CREATE TABLE Tasks (
  id INT AUTO_INCREMENT  PRIMARY KEY,
  task_description VARCHAR(250) NOT NULL,
  datetime SMALLDATETIME NOT NULL,
  completed BIT DEFAULT 1,
  userid INT,
   foreign key (userid) references Users(userid)
);

INSERT INTO Tasks (task_description, datetime, userid) VALUES
  ('Task1', '2022-03-26 11:05:00' ,'2'),
  ('Task2', '2022-07-30 15:08:00','2'),
  ('Task3', '2022-09-25 23:56:50','1'),
  ('Task4','2022-09-30 14:34:21', '3'),
  ('Task5','2022-08-22 14:34:21', '3');