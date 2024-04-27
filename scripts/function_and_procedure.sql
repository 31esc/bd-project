-- Обновление данных пользователя
CREATE OR REPLACE PROCEDURE update_user(
    cur_user_id INTEGER,
    new_bank_acc_number VARCHAR(16),
    new_telephone VARCHAR(16)
) LANGUAGE plpgsql AS $$
DECLARE
    old_bank_acc_number VARCHAR(16);
    old_telephone VARCHAR(16);
BEGIN
    SELECT bank_acc_number, telephone
    INTO old_bank_acc_number, old_telephone
    FROM project.user
    WHERE user_id = cur_user_id;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'User not found';
    END IF;

    UPDATE project.user
    SET 
        bank_acc_number = new_bank_acc_number,
        telephone = new_telephone
    WHERE user_id = cur_user_id;

    INSERT INTO project.user_history (user_id, bank_acc_number, telephone, history_data)
    VALUES (cur_user_id, old_bank_acc_number, old_telephone, CURRENT_TIMESTAMP);
END $$;

-- Количество поездок водителя
CREATE OR REPLACE FUNCTION get_driver_trip_count(driver_id INTEGER)
RETURNS INTEGER AS $$
DECLARE
    trip_count INTEGER;
BEGIN
    SELECT COUNT(*)
    INTO trip_count
    FROM project.trip_details td
    WHERE td.driver_id = $1;

    RETURN trip_count;
END;
$$ LANGUAGE plpgsql;

-- Получение списка поездок пользователя 
CREATE OR REPLACE FUNCTION get_user_trips(user_id INTEGER)
RETURNS TABLE (
    driver_id INTEGER,
    start_location POINT,
    destination POINT,
    start_time TIMESTAMP,
    end_time TIMESTAMP,
    price INTEGER
) AS $$
BEGIN
    RETURN QUERY
    SELECT td.driver_id, td.start_location, td.destination, td.start_time, td.end_time, td.price
    FROM project.trip_details td
    WHERE td.user_id = $1;
END;
$$ LANGUAGE plpgsql;
