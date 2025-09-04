SELECT COUNT(tip_concediu) AS persoane_CO_odihna
FROM concedii
GROUP BY tip_concediu
HAVING tip_concediu='odihna'
