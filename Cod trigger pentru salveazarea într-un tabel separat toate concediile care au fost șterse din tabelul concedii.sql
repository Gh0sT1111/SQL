CREATE TRIGGER trg_istoric_concedii
AFTER DELETE ON concedii
FOR EACH ROW
EXECUTE FUNCTION trigger_istoric_concedii();