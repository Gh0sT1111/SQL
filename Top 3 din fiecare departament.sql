SELECT *
FROM(
SELECT 
  a.nume,
  d.nume_departament,
  a.salariu,
  DENSE_RANK() OVER (PARTITION BY d.id ORDER BY a.salariu DESC) AS rang
FROM angajati a
JOIN departamente d ON a.id_departament = d.id
) AS top3
WHERE rang<=3