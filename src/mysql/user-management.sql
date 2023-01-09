CREATE DATABASE demo;
USE demo;

CREATE TABLE users (
 id  INT(3) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(120) NOT NULL,
 email VARCHAR(220) NOT NULL,
 country VARCHAR(120)
);

SELECT * FROM users 
ORDER BY name;

INSERT INTO users(name, email, country) VALUES('Minh','minh@codegym.vn','Viet Nam');
INSERT INTO users(name, email, country) VALUES('Kante','kante@che.uk','Kenia');

DELIMITER //
CREATE PROCEDURE get_user_by_id(IN user_id INT)
BEGIN

    SELECT users.name, users.email, users.country

    FROM users

    where users.id = user_id;

    END //
DELIMITER ;

  

DELIMITER //
CREATE PROCEDURE insert_user(

IN user_name VARCHAR(50),

IN user_email VARCHAR(50),

IN user_country VARCHAR(50)

)

BEGIN

    INSERT INTO users(name, email, country) VALUES(user_name, user_email, user_country);

    END //

DELIMITER ;

CREATE TABLE User_Permision(
permision_id INT(11),
user_id INT(11)
);

CREATE TABLE Permision(
id INT(11) PRIMARY KEY,
name VARCHAR(50)
);

INSERT INTO Permision(id,name) VALUES(1,'add');
INSERT INTO Permision(id,name) VALUES(2,'edit');
INSERT INTO Permision(id,name) VALUES(3,'delete');
INSERT INTO Permision(id,name) VALUES(4,'view');

DELIMITER //
CREATE PROCEDURE find_all_users()
BEGIN

    SELECT
    *
    FROM users;

    END //
DELIMITER ;

CALL find_all_users;

DELIMITER //
CREATE PROCEDURE update_user(
IN user_name VARCHAR(50),

IN user_email VARCHAR(50),

IN user_country VARCHAR(50),

IN user_id INT
)
BEGIN

   UPDATE users SET name = user_name, email= user_email, country = user_country WHERE id = user_id;

    END //
DELIMITER ;

CALL update_user('C','C@gmail.com','Campuchia',13);
CALL find_all_users();
CALL delete_user(12);

DELIMITER //
CREATE PROCEDURE delete_user(IN user_id INT)
BEGIN

  DELETE FROM users WHERE id = user_id;

    END //
DELIMITER ;
