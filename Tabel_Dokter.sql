-- Membuat Tabel Spesialis
CREATE TABLE spesialis (
    kd_spesialis INT PRIMARY KEY,
    spesialis VARCHAR(50)
);

-- Membuat Tabel Dokter
CREATE TABLE dokter (
    kd_dokter INT PRIMARY KEY,
    nama VARCHAR(50),
    hp VARCHAR(15),
    kd_spesialis INT,
    FOREIGN KEY (kd_spesialis) REFERENCES spesialis(kd_spesialis)
);

-- Membuat Tabel Praktek
CREATE TABLE praktek (
    kd_dokter INT,
    hari VARCHAR(10),
    jam_mulai TIME,
    jam_selesai TIME,
    FOREIGN KEY (kd_dokter) REFERENCES dokter(kd_dokter)
);

-- Menambahkan Data ke Tabel Spesialis
INSERT INTO spesialis (kd_spesialis, spesialis)
VALUES (1, 'Dokter Umum'), 
       (2, 'Dokter Gigi'), 
       (3, 'Dokter Spesialis Anak');

-- Menambahkan Data ke Tabel Dokter
INSERT INTO dokter (kd_dokter, nama, hp, kd_spesialis)
VALUES (1, 'Dr. Ahmad', '08123456789', 1),
       (2, 'Dr. Bagus', '08234567890', 2),
       (3, 'Dr. Sholikin Fatkhur Rohman', '08345678901', 3);

-- Menambahkan Data ke Tabel Praktek
INSERT INTO praktek (kd_dokter, hari, jam_mulai, jam_selesai)
VALUES (1, 'Senin', '08:00', '12:00'),
       (2, 'Selasa', '09:00', '13:00'),
       (3, 'Rabu', '10:00', '14:00');

-- Menampilkan Semua Data Dokter
SELECT * FROM dokter;

-- Menampilkan Semua Data Spesialis
SELECT * FROM spesialis;

-- Menampilkan Semua Jadwal Praktek
SELECT * FROM praktek;
