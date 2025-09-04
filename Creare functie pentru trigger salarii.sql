CREATE OR REPLACE FUNCTION trigger_salarii_istoric()
RETURNS TRIGGER AS $$
BEGIN
  INSERT INTO salarii_audit (
    id_angajat,
    bonus_vechi,
    bonus_nou,
    an_fiscal_vechi,
    an_fiscal_nou,
    data_modificarii
  )
  VALUES (
    OLD.id_angajat,
    OLD.bonus_lunar,
    NEW.bonus_lunar,
    OLD.an_fiscal,
    NEW.an_fiscal,
    CURRENT_TIMESTAMP
  );

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;