-- Drop dacă există deja (opțional)
DROP TABLE IF EXISTS concedii, salarii, angajati, departamente CASCADE;

-- Tabel DEPARTAMENTE
CREATE TABLE departamente (
    id SERIAL PRIMARY KEY,
    nume_departament VARCHAR(50) NOT NULL,
    locatie VARCHAR(100)
);

-- Tabel ANGAJATI
CREATE TABLE angajati (
    id SERIAL PRIMARY KEY,
    nume VARCHAR(100) NOT NULL,
    salariu INTEGER NOT NULL,
    id_departament INTEGER,
    FOREIGN KEY (id_departament) REFERENCES departamente(id)
);

-- Tabel SALARII
CREATE TABLE salarii (
    id SERIAL PRIMARY KEY,
    id_angajat INTEGER,
    bonus_lunar INTEGER,
    an_fiscal INTEGER,
    FOREIGN KEY (id_angajat) REFERENCES angajati(id)
);

-- Tabel CONCEDII
CREATE TABLE concedii (
    id SERIAL PRIMARY KEY,
    id_angajat INTEGER,
    tip_concediu VARCHAR(50),
    data_inceput DATE,
    data_sfarsit DATE,
    FOREIGN KEY (id_angajat) REFERENCES angajati(id)
);

-- INDEXURI utile
CREATE INDEX idx_angajati_salariu ON angajati(salariu);
CREATE INDEX idx_angajati_id_departament ON angajati(id_departament);
CREATE INDEX idx_salarii_id_angajat ON salarii(id_angajat);
CREATE INDEX idx_concedii_id_angajat ON concedii(id_angajat);

-- Inserare DEPARTAMENTE
INSERT INTO departamente (nume_departament, locatie) VALUES
('IT', 'Bucuresti'),
('HR', 'Cluj'),
('Vanzari', 'Timisoara');

-- Inserare ANGAJATI
INSERT INTO angajati (nume, salariu, id_departament) VALUES
('Andrei Popescu', 7000, 1),
('Maria Ionescu', 6500, 2),
('George Vlad', 9000, 1),
('Ioana Dinu', 7000, 3),
('Cristian Enache', 7500, 1);

-- Inserare SALARII
INSERT INTO salarii (id_angajat, bonus_lunar, an_fiscal) VALUES
(1, 1000, 2024),
(2, 800, 2024),
(3, 1200, 2024),
(4, 1100, 2024),
(5, 1000, 2024);

-- Inserare CONCEDII
INSERT INTO concedii (id_angajat, tip_concediu, data_inceput, data_sfarsit) VALUES
(1, 'Odihna', '2024-06-01', '2024-06-10'),
(2, 'Medical', '2024-05-01', '2024-05-05'),
(3, 'Odihna', '2024-07-10', '2024-07-20'),
(1, 'Odihna', '2024-08-01', '2024-08-07');