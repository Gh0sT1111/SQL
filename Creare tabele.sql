CREATE TABLE angajati(
id SERIAL NOT NULL PRIMARY KEY,
id_departament int,
salariu int,
data_angajare date
);

CREATE TABLE departament(
id SERIAL NOT NULL PRIMARY KEY,
nume_departament varchar(255),
locatie varchar(255)
);

CREATE TABLE salarii(
id SERIAL NOT NULL PRIMARY KEY,
id_angajat varchar(255),
bonus_lunar int,
an_fiscal int
)