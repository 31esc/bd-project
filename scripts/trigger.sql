-- Обновление данных пользователя
CREATE OR REPLACE FUNCTION user_update_trigger()
RETURNS TRIGGER AS $$
DECLARE
    old_bank_acc_number VARCHAR(16);
    old_telephone VARCHAR(16);
BEGIN
    old_bank_acc_number := OLD.bank_acc_number;
    old_telephone := OLD.telephone;

    IF EXISTS (SELECT 1 FROM project.user WHERE user_id = NEW.user_id) THEN
        INSERT INTO project.user_history (user_id, bank_acc_number, telephone, history_data)
        VALUES (NEW.user_id, old_bank_acc_number, old_telephone, CURRENT_TIMESTAMP);
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS user_update ON project.user;
CREATE TRIGGER user_update
BEFORE UPDATE ON project.user
FOR EACH ROW EXECUTE FUNCTION user_update_trigger();

-- Проверка времени начала и окончания поездки
CREATE OR REPLACE FUNCTION trip_time_check_trigger()
RETURNS TRIGGER AS $$
BEGIN
    IF NEW.start_time >= NEW.end_time THEN
        RAISE EXCEPTION 'The time is incorrect';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS trip_time_check ON project.trip_details;
CREATE TRIGGER trip_time_check
BEFORE INSERT OR UPDATE ON project.trip_details
FOR EACH ROW EXECUTE FUNCTION trip_time_check_trigger();

-- Проверка уникальности номера банковского счета 
CREATE OR REPLACE FUNCTION bank_account_number_check_trigger()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM project.user WHERE bank_acc_number = NEW.bank_acc_number) THEN
        RAISE EXCEPTION 'The bank account number is already in use';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS bank_account_number_check ON project.user;
CREATE TRIGGER bank_account_number_check
BEFORE INSERT ON project.user
FOR EACH ROW
EXECUTE FUNCTION bank_account_number_check_trigger();

