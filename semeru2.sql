create schema semeru2;
use semeru2;
CREATE USER 'semeru2'@'%' IDENTIFIED BY 'UeAHjOO84PuaJib3chLbAL5v';
GRANT INSERT, UPDATE, DELETE, SELECT ON semeru2.* TO 'semeru2'@'%';

create table accounts(
     account_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
     first_name VARCHAR(50) NOT NULL,
     last_name VARCHAR(50) NOT NULL,
     address VARCHAR(255),
     city TINYINT,
     province SMALLINT,
     zipcode VARCHAR(5),
     email_address VARCHAR(255) NOT NULL,
     phone_number VARCHAR(20)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table profile_picture(
    account_id INT UNSIGNED PRIMARY KEY,
    object TEXT
)