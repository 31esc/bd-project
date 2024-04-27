-- Информация о поездке.
CREATE OR REPLACE VIEW trip_information AS
SELECT u.user_id, u.firstname AS user_firstname, u.surname AS user_surname,
       d.driver_id, d.firstname AS driver_firstname, d.surname AS driver_surname,
       td.start_location, td.destination, td.start_time, td.end_time, td.price
FROM project.user u
INNER JOIN project.trip_details td ON u.user_id = td.user_id
INNER JOIN project.driver d on d.driver_id = td.driver_id;

-- Банковская информация для поездки.
CREATE OR REPLACE VIEW bank_information AS
SELECT u.user_id, u.bank_acc_number AS user_bank_acc_number,
       d.driver_id, d.bank_acc_number AS driver_bank_acc_number,
       td.price, td.start_time
FROM project.user u
INNER JOIN project.trip_details td ON u.user_id = td.user_id
INNER JOIN project.driver d on d.driver_id = td.driver_id;

-- Количество поездок у клиентов
CREATE OR REPLACE VIEW user_trip_count AS
SELECT u.user_id, COUNT(*) AS trip_count
FROM project.user u
JOIN project.trip_details td ON u.user_id = td.user_id
GROUP BY u.user_id;

-- Количество поездок у водителей
CREATE OR REPLACE VIEW driver_trip_count AS
SELECT d.driver_id, COUNT(*) AS trip_count
FROM project.driver d
JOIN project.trip_details td ON d.driver_id = td.driver_id
GROUP BY d.driver_id;

-- Информация об автомобиле
CREATE OR REPLACE VIEW car_information AS
SELECT c.car_id, c.model, c.registration_number, c.color, t.tariff
FROM project.car c
INNER JOIN project.tariff t ON c.model = t.model;

-- Информация об активных водителях
CREATE OR REPLACE VIEW active_drivers AS
SELECT *
FROM project.driver d
WHERE date_of_dismissal IS NULL;
