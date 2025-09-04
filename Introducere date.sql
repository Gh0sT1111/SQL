INSERT INTO departament (nume_departament, locatie)
VALUES
  ('IT', 'București'),
  ('Resurse Umane', 'Cluj'),
  ('Financiar', 'Timișoara'),
  ('Marketing', 'Iași'),
  ('Vânzări', 'Brașov');

  INSERT INTO angajati (nume, id_departament, salariu, data_angajare)
VALUES
  -- IT
  ('Andrei Popescu', 1, 7500, '2021-03-15'),
  ('Irina Vlad', 1, 8200, '2022-06-20'),
  ('George Ionescu', 1, 7800, '2020-11-01'),
  ('Lavinia Petrescu', 1, 8700, '2023-01-10'),
  ('Radu Georgescu', 1, 9500, '2019-09-05'),
  ('Simona Munteanu', 1, 7200, '2022-12-12'),
  ('Ionel Enache', 1, 7300, '2021-07-01'),

  -- Resurse Umane
  ('Cristina Dobre', 2, 5200, '2022-02-01'),
  ('Alexandra Ilie', 2, 5100, '2023-03-10'),
  ('Daniela Stan', 2, 5600, '2021-04-15'),
  ('Stefan Neagu', 2, 5900, '2020-09-20'),

  -- Financiar
  ('Mihai Dragomir', 3, 9000, '2018-11-11'),
  ('Carmen Oprea', 3, 8700, '2019-06-06'),
  ('Iulian Serban', 3, 9100, '2020-08-08'),
  ('Monica Rusu', 3, 9300, '2021-10-10'),
  ('Valentina Zamfir', 3, 8800, '2022-01-01'),
  ('Lucian Ganea', 3, 9100, '2023-03-03'),

  -- Marketing
  ('Adelina Stoica', 4, 6700, '2021-05-05'),
  ('Diana Marinescu', 4, 6900, '2023-04-01'),
  ('Ovidiu Sandu', 4, 7200, '2022-06-06'),
  ('Laura Dumitrescu', 4, 7400, '2020-10-10'),
  ('Robert Vasile', 4, 7300, '2021-09-01'),

  -- Vânzări
  ('Paul Bălan', 5, 6000, '2020-07-01'),
  ('Gabriel Radu', 5, 6500, '2022-08-15'),
  ('Maria Costache', 5, 6200, '2023-02-20'),
  ('Alina Tudor', 5, 6400, '2021-12-12'),
  ('Florin Nistor', 5, 6600, '2020-03-03'),
  ('Claudia Dinu', 5, 6100, '2019-11-11');


INSERT INTO salarii (id_angajat, bonus_lunar, an_fiscal)
VALUES
  (1, 500, 2024),
  (2, 600, 2024),
  (3, 450, 2024),
  (4, 700, 2024),
  (5, 800, 2024),
  (6, 300, 2024),
  (7, 350, 2024),
  (8, 200, 2024),
  (9, 250, 2024),
  (10, 300, 2024),
  (11, 320, 2024),
  (12, 900, 2024),
  (13, 850, 2024),
  (14, 870, 2024),
  (15, 910, 2024),
  (16, 880, 2024),
  (17, 870, 2024),
  (18, 400, 2024),
  (19, 420, 2024),
  (20, 430, 2024),
  (21, 450, 2024),
  (22, 440, 2024),
  (23, 350, 2024),
  (24, 380, 2024),
  (25, 360, 2024),
  (26, 390, 2024),
  (27, 400, 2024),
  (28, 370, 2024);
