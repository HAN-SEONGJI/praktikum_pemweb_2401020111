USE praktikum_web_2401020111;
 
INSERT INTO program_studi (nama_prodi) VALUES
    ('Teknik sipil'),
    ('Teknik Elektro');
 
INSERT INTO mahasiswa
    (nim, nama, email, usia, program_studi_id)
VALUES
    ('2401020111', 'Muhamad Agus Farhan Talib',
     'Farhan@example.com', 21, 1),
    ('2401020112', 'Firman Dwi Syaputra',
     'firman@example.com', 22, 2),
    ('2401020113', 'Monalisa',
     'mona@example.com', 20, 1),
    ('2401020117', 'Farrel Abhista Farouk',
     'farrelp@example.com', 21, 2);
 
UPDATE mahasiswa
SET email = 'agusfarhannn@example.com'
WHERE nim = '2401020111';
 
DELETE FROM mahasiswa
WHERE nim = '2401020112';
 
SELECT m.nim, m.nama, m.email, m.usia,
       p.nama_prodi
FROM mahasiswa AS m
JOIN program_studi AS p
    ON p.id = m.program_studi_id
ORDER BY m.nim;
