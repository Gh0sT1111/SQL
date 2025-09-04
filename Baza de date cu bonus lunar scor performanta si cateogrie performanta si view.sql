CREATE OR REPLACE VIEW raport_performanta_anual AS
WITH salarii_extinse AS (
  SELECT 
    a.nume,
    d.nume_departament,
    a.salariu,
    s.bonus_lunar,
    s.an_fiscal,
    (a.salariu + 12 * s.bonus_lunar) AS scor_performanta
  FROM angajati a
  JOIN salarii s ON a.id = s.id_angajat
  JOIN departamente d ON a.id_departament = d.id
)
SELECT 
  nume,
  nume_departament,
  an_fiscal,
  salariu,
  bonus_lunar,
  scor_performanta,
  CASE
    WHEN scor_performanta >= 120000 THEN 'Scor mare'
    WHEN scor_performanta >= 100000 THEN 'Scor mediu'
    ELSE 'Scor mic'
  END AS categorie_performanta
FROM salarii_extinse;