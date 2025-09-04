CREATE OR REPLACE FUNCTION total_zile_concediu(id_input INT)
RETURNS INT AS $$
DECLARE
  total_zile INT;
BEGIN
  SELECT SUM(data_sfarsit - data_inceput)
  INTO total_zile
  FROM concedii
  WHERE id_angajat = id_input;

  RETURN COALESCE(total_zile, 0);
END;
$$ LANGUAGE plpgsql;