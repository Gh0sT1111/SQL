SELECT a.nume,c.tip_concediu,AGE(data_sfarsit, data_inceput) AS durata
FROM concedii c
JOIN angajati a
ON a.id=c.id_angajat