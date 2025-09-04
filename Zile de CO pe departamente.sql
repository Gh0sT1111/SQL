SELECT 
  d.nume_departament,
  ROUND(AVG(data_sfarsit-data_inceput), 2) AS zile_de_concediu
FROM departamente d
JOIN concedii c ON c.id= d.id
GROUP BY d.nume_departament;