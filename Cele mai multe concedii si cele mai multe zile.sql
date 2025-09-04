SELECT 
  a.nume,
  COUNT(*) AS total_concedii,
  SUM(data_sfarsit - data_inceput) AS total_zile,
  MODE() WITHIN GROUP (ORDER BY c.tip_concediu) AS tip_frecvent
FROM concedii c
JOIN angajati a ON a.id = c.id_angajat
GROUP BY a.nume;