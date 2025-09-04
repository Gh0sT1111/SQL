SELECT COUNT(tip_concediu) AS persoane_CO_medical
FROM concedii
GROUP BY tip_concediu
HAVING tip_concediu='medical'
