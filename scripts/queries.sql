-- Список водителей, которые зарегистрировались после '2024-01-10'
SELECT *
FROM project.driver d
WHERE date_of_employment > '2024-01-10';

-- Общая сумма денег, потраченная каждым пользователем
SELECT td.user_id, SUM(td.price) AS total_spent
FROM project.trip_details td
GROUP BY td.user_id
ORDER BY SUM(td.price) DESC;

-- Общее количество денег, заработанных каждым водителем
SELECT d.driver_id, sum(td.price)
FROM project.driver d
JOIN project.trip_details td ON d.driver_id = td.driver_id
GROUP BY d.driver_id
ORDER BY sum(td.price) DESC;

-- Самая популярная модель автомобиля
SELECT c.model, COUNT(*) AS trip_count
FROM project.car c
JOIN project.driver_car dc ON c.car_id = dc.car_id
JOIN project.trip_details td ON dc.driver_id = td.driver_id
GROUP BY c.model
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Самый активный день недели для поездок
SELECT EXTRACT(DOW FROM td.start_time) AS day_of_week, COUNT(*) AS trip_count
FROM project.trip_details td
GROUP BY EXTRACT(DOW FROM td.start_time)
ORDER BY COUNT(*) DESC
LIMIT 1;

-- Список пользователей, которые заплатили самую большую стоимость за поездку, и эта стоимость
SELECT u.user_id, u.firstname, u.surname, td.price AS max_price
FROM project.user u
INNER JOIN project.trip_details td ON u.user_id = td.user_id
WHERE td.price = (
    SELECT max(price)
    from project.trip_details
);

-- Суммарное количество поездок для каждого водителя,у которых количество поездок больше 2
SELECT d.driver_id, COUNT(*) AS trip_count
FROM project.driver d
JOIN project.trip_details td ON d.driver_id = td.driver_id
GROUP BY d.driver_id
HAVING COUNT(*) > 2
ORDER BY COUNT(*) DESC;

-- Список пользователей, которые меняли свои данные и дата их последнего изменения
SELECT u.user_id, u.firstname, u.surname, max(uh.history_data) as last_data_changes
FROM project.user u
INNER JOIN project.user_history uh ON u.user_id = uh.user_id
GROUP BY u.user_id
ORDER BY u.user_id;

-- Список пользователей, которые совершили поездку в определенный день
SELECT u.user_id, u.firstname, u.surname
FROM project.user u
JOIN project.trip_details td ON u.user_id = td.user_id
WHERE td.start_time::date = '2024-01-02'
GROUP BY u.user_id, u.firstname, u.surname;

-- Средняя стоимость поездки для каждого тарифа
SELECT t.tariff, AVG(td.price) as avg_price
FROM project.Trip_Details td
INNER JOIN project.driver d ON d.driver_id = td.driver_id
INNER JOIN project.driver_car dc ON td.driver_id = dc.driver_id
INNER JOIN project.car c ON c.car_id = dc.car_id
INNER JOIN project.tariff t ON t.model = c.model
GROUP BY t.tariff
ORDER BY AVG(td.price) DESC;
