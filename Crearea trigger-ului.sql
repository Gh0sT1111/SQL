CREATE TRIGGER trigger_validare_concediu
BEFORE INSERT ON concedii
FOR EACH ROW
EXECUTE FUNCTION validare_concediu();