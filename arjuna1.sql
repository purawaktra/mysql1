create schema arjuna1;
use arjuna1;
CREATE USER 'arjuna1'@'%' IDENTIFIED BY 'rWHtKFqi9a9jGASsB6tLIeiG';
GRANT INSERT, UPDATE, DELETE, SELECT ON arjuna1.* TO 'arjuna1'@'%';

create table sessions (
    session_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    session_hash TEXT NOT NULL,
    account_id INT UNSIGNED NOT NULL,
    issuer VARCHAR(20) NOT NULL,
    audience VARCHAR(20) NOT NULL,
    issued_at DATETIME NOT NULL,
    expire_at DATETIME NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table activities (
    activity_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    status VARCHAR(50) NOT NULL,
    status_code VARCHAR(2) NOT NULL,
    method VARCHAR(10) NOT NULL,
    service VARCHAR(50) NOT NULL,
    message TEXT NOT NULL ,
    created_at TIMESTAMP DEFAULT current_timestamp
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;