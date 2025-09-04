SELECT *
FROM
(SELECT a.nume,c.tip_concediu,data_sfarsit-data_inceput AS durata,
 DENSE_RANK() OVER (PARTITION BY c.tip_concediu ORDER BY data_sfarsit-data_inceput DESC) AS rang
FROM concedii c
JOIN angajati a
ON a.id=c.id_angajat
)AS top_zile_CO
WHERE rang<=3;