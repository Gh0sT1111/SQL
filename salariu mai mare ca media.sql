SELECT nume, salariu
FROM angajati
WHERE salariu > (SELECT AVG(salariu) FROM angajati);