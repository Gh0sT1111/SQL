CREATE OR REPLACE FUNCTION trigger_istoric_concedii()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO istoric_concedii (
    id_angajat,
    tip_concediu,
	data_inceput,
	data_sfarsit
  )
  VALUES (
    OLD.id_angajat,
    OLD.tip_concediu,
	OLD.data_inceput,
	OLD.data_sfarsit
  );

  RETURN NULL;
END;
$$ LANGUAGE plpgsql;
