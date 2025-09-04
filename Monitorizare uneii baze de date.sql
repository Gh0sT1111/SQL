SELECT pid, usename, datname, state, query
   /*
pid-Process ID (ID-ul conexiunii active). Fiecare sesiune deschisă are un PID unic.
usename-Numele utilizatorului conectat (ex: postgres, user_test)
datname-Baza de date la care este conectat utilizatorul
state-Starea conexiunii:
    */
FROM pg_stat_activity
WHERE state != 'idle';