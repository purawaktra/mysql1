create schema semeru1;
use semeru1;
CREATE USER 'semeru1'@'%' IDENTIFIED BY 'Iz0MPMBcp96l3AuZd6Sny5Zj';
GRANT INSERT, UPDATE, DELETE, SELECT ON semeru1.* TO 'semeru1'@'%';

create table cities(
    city_id SMALLINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    province TINYINT REFERENCES provinces(province_id)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

create table provinces(
    province_id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
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