CREATE TRIGGER tr_log_modificari_salarii
AFTER UPDATE ON salarii
FOR EACH ROW
EXECUTE FUNCTION trigger_salarii_istoric();