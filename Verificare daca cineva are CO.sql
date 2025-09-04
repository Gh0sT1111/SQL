CREATE OR REPLACE FUNCTION lista_concedii(id_input INT)
RETURNS TABLE (
  tip_concediu VARCHAR(50),
  data_inceput DATE,
  data_sfarsit DATE,
  durata_zile INT
) AS $$
DECLARE
  nr_concedii INT;
BEGIN
  SELECT COUNT(*) 
  INTO nr_concedii
  FROM concedii
  WHERE id_angajat = id_input;

  IF nr_concedii = 0 THEN
    RAISE NOTICE 'Angajatul cu ID % nu are concedii.', id_input;
    RETURN;
  END IF;

  RETURN QUERY
  SELECT 
    c.tip_concediu,
    c.data_inceput,
    c.data_sfarsit,
    (c.data_sfarsit - c.data_inceput) AS durata_zile
  FROM concedii c
  WHERE c.id_angajat = id_input;

END;
$$ LANGUAGE plpgsql;