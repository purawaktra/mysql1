create schema semeru3;
use semeru3;
CREATE USER 'semeru3'@'%' IDENTIFIED BY 'Iz0MPMBcp96l3AuZd6Sny5Zj';
GRANT INSERT, UPDATE, DELETE, SELECT ON semeru3.* TO 'semeru3'@'%';

create table credentials(
    account_id INT UNSIGNED PRIMARY KEY,
    password_hash TEXT NOT NULL,
    salt VARCHAR(10)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;