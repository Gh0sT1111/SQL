CREATE OR REPLACE FUNCTION probleme_concediu()
RETURNS TRIGGER AS $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM concedii
    WHERE id_angajat = NEW.id_angajat
      AND data_inceput = NEW.data_inceput
      AND data_sfarsit = NEW.data_sfarsit
  ) THEN
    RAISE EXCEPTION 'Concediul se suprapune cu unul deja existent pentru acest angajat.';
  END IF;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_probleme_concediu
BEFORE INSERT ON concedii
FOR EACH ROW
EXECUTE FUNCTION probleme_concediu();