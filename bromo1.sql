create schema bromo1;
use bromo1;
CREATE USER 'bromo1'@'%' IDENTIFIED BY '3AMuRoBPag0vZ8hyBsgnsAtC';
GRANT INSERT, UPDATE, DELETE, SELECT ON bromo1.* TO 'bromo1'@'%';

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
drop table accounts;

create table credentials(
    account_id INT UNSIGNED PRIMARY KEY REFERENCES accounts(account_id) ,
    password_hash TEXT NOT NULL,
    salt VARCHAR(10)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




