CREATE OR REPLACE FUNCTION total_concedii_per_angajat()
RETURNS TABLE (
  id_angajat INT,
  nume VARCHAR(100),
  total_zile_concediu INT
) AS $$
DECLARE
  angajat RECORD;
BEGIN
  FOR angajat IN SELECT a.id, a.nume FROM angajati a LOOP
    RETURN QUERY
    SELECT 
      angajat.id,
      angajat.nume,
      COALESCE(SUM(c.data_sfarsit - c.data_inceput), 0)::INT
    FROM concedii c
    WHERE c.id_angajat = angajat.id;
  END LOOP;

  RETURN;
END;
$$ LANGUAGE plpgsql;