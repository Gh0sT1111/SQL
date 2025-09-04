SELECT CASE WHEN salariu>=9000 THEN 'salariu mare'
	 WHEN salariu<9000 AND salariu>=6500 THEN 'salariu mediu'
		ELSE 'salariu mic' END,
		COUNT(*) AS count
		FROM angajati
		GROUP BY CASE WHEN salariu>=9000 THEN 'salariu mare'
		 WHEN salariu<9000 AND salariu>=6500 THEN 'salariu mediu'
			ELSE 'salariu mic' END
