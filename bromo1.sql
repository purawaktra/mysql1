create schema bromo1;
use bromo1;
CREATE USER 'bromo1'@'%' IDENTIFIED BY '3AMuRoBPag0vZ8hyBsgnsAtC';
GRANT INSERT, UPDATE, DELETE, SELECT ON bromo1.* TO 'bromo1'@'%';

create table accounts(
    account_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(255),
    city TINYINT REFERENCES cities(city_id),
    province SMALLINT REFERENCES provinces(province_id),
    zipcode VARCHAR(5),
    email_address VARCHAR(255) NOT NULL,
    phone_number TINYINT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table cities(
    city_id SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    province TINYINT REFERENCES provinces(province_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table provinces(
    province_id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table credentials(
    credential_id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    account_id INT UNSIGNED REFERENCES accounts(account_id),
    password_hash TEXT NOT NULL,
    salt TEXT
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO provinces (name) VALUES
  ('Aceh'),
  ('Bali'),
  ('Bangka Belitung'),
  ('Banten'),
  ('Bengkulu'),
  ('Gorontalo'),
  ('Jakarta'),
  ('Jambi'),
  ('Jawa Barat'),
  ('Jawa Tengah'),
  ('Jawa Timur'),
  ('Kalimantan Barat'),
  ('Kalimantan Selatan'),
  ('Kalimantan Tengah'),
  ('Kalimantan Timur'),
  ('Kalimantan Utara'),
  ('Kepulauan Riau'),
  ('Lampung'),
  ('Maluku'),
  ('Maluku Utara'),
  ('Nusa Tenggara Barat'),
  ('Nusa Tenggara Timur'),
  ('Papua'),
  ('Papua Barat'),
  ('Riau'),
  ('Sulawesi Barat'),
  ('Sulawesi Selatan'),
  ('Sulawesi Tengah'),
  ('Sulawesi Tenggara'),
  ('Sulawesi Utara'),
  ('Sumatera Barat'),
  ('Sumatera Selatan'),
  ('Sumatera Utara'),
  ('Yogyakarta');

