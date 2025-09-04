CREATE OR REPLACE FUNCTION concediu_sters()
RETURNS TRIGGER AS $$
BEGIN
  IF (NEW.data_sfarsit - NEW.data_inceput) > 30 THEN
    RAISE EXCEPTION 'Durata concediului nu poate depăși 30 de zile. Start: %, Sfârșit: %',
      NEW.data_inceput, NEW.data_sfarsit;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;