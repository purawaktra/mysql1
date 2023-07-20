create schema semeru3;
use semeru3;
CREATE USER 'semeru3'@'%' IDENTIFIED BY 'EU4gMmcdsWS8YR4sMoWO8VXs';
GRANT INSERT, UPDATE, DELETE, SELECT ON semeru3.* TO 'semeru3'@'%';

create table accounts(
     account_id INT UNSIGNED PRIMARY KEY,
     first_name VARCHAR(64) NOT NULL,
     last_name VARCHAR(64),
     address VARCHAR(256),
     city TINYINT,
     province SMALLINT,
     zipcode VARCHAR(8),
     phone_number VARCHAR(64),
     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
     modified_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table profile_pictures(
    account_id INT UNSIGNED PRIMARY KEY,
    document_id VARCHAR(32) NOT NULL,
    thumbnail_id VARCHAR(32),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    modified_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;