SELECT relname, --Numele tabelului (rel = relation) spre exemplu la noi este angajati,concedii etc..
       seq_scan,--Câte scanări secvențiale au fost făcute (fără index, lent)
       idx_scan,--Câte scanări prin index au fost făcute (mai rapid)
       n_tup_ins,--	Câte rânduri au fost inserate în acel tabel
       n_tup_upd,--	Câte rânduri au fost modificate (UPDATE)
       n_tup_del--	Câte rânduri au fost șterse (DELETE)
FROM pg_stat_user_tables
ORDER BY seq_scan DESC;