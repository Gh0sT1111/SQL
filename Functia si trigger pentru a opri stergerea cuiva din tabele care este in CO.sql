CREATE OR REPLACE FUNCTION blocare_stergere_angajat()
RETURNS TRIGGER AS $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM concedii
    WHERE id_angajat = OLD.id
  ) THEN
    RAISE EXCEPTION 'Nu se poate șterge angajatul: există concedii înregistrate pentru el.';
  END IF;

  RETURN OLD;
END;
$$ LANGUAGE plpgsql;
-- AICI era lipsa punctului și virgulei!

-- Triggerul poate fi scris imediat după:
CREATE TRIGGER trigger_blocare_stergere_angajat
BEFORE DELETE ON angajati
FOR EACH ROW
EXECUTE FUNCTION blocare_stergere_angajat();