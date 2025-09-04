CREATE OR REPLACE FUNCTION trigger_avertizari_bonus()
RETURNS TRIGGER AS $$
BEGIN
INSERT INTO avertizari_bonus (
		id_angajat,
		bonus_vechi,
		bonus_nou,
		data_modificarii
		)
VALUES (
    OLD.id_angajat,
    OLD.bonus_lunar,
    NEW.bonus_lunar,
 	CURRENT_TIMESTAMP
	 );

	 RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_avertizari_bonus
AFTER UPDATE ON salarii
FOR EACH ROW
WHEN (
  NEW.bonus_lunar < OLD.bonus_lunar
)
EXECUTE FUNCTION trigger_avertizari_bonus();
      

	 
	 