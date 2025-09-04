CREATE OR REPLACE FUNCTION validare_concediu()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.data_sfarsit < NEW.data_inceput THEN
    RAISE EXCEPTION 'Data de sfârșit (%), nu poate fi înainte de data de început (%)',
      NEW.data_sfarsit, NEW.data_inceput;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;