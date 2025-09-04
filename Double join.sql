SELECT  a.nume, 
  a.salariu, 
  s.bonus_lunar, 
  s.an_fiscal, 
  d.nume_departament, 
  d.locatie,
  CASE
    WHEN a.salariu >= 9000 THEN 'salariu mare'
      WHEN a.salariu >= 6500 THEN 'salariu mediu'
      ELSE 'salariu mic'
    END AS categorie_salariu
FROM angajati a
JOIN salarii s
ON a.id = s.id_angajat
JOIN departamente d
ON a.id_departament = d.id;

