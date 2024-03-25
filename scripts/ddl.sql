CREATE SCHEMA IF NOT EXISTS project;

DROP TABLE IF EXISTS project.User CASCADE;
CREATE TABLE project.User (
    user_id SERIAL PRIMARY KEY,
    firstname VARCHAR(100) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    banck_acc_number INTEGER NOT NULL,
    telephone VARCHAR(20) NOT NULL
);

DROP TABLE IF EXISTS project.Driver CASCADE;
CREATE TABLE project.Driver (
    driver_id SERIAL PRIMARY KEY,
    firstname VARCHAR(100) NOT NULL,
    surname VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    banck_acc_number INTEGER NOT NULL,
    telephone VARCHAR(20) NOT NULL,
    date_of_employment DATE NOT NULL,
    date_of_dismissal DATE DEFAULT NULL
);

DROP TABLE IF EXISTS project.Trip_Details CASCADE;
CREATE TABLE project.Trip_Details (
    trip_id SERIAL PRIMARY KEY,
    user_id INTEGER REFERENCES project.User(user_id),
    driver_id INTEGER REFERENCES project.Driver(driver_id),
    start_location POINT NOT NULL,
    destination POINT NOT NULL,
    start_time DATE NOT NULL,
    end_time DATE NOT NULL,
    price INTEGER NOT NULL
);

DROP TABLE IF EXISTS project.Tariff CASCADE;
CREATE TABLE project.Tariff (
    model VARCHAR(100) PRIMARY KEY,
    tariff VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS project.Car CASCADE;
CREATE TABLE project.Car (
    car_id SERIAL PRIMARY KEY,
    model VARCHAR(100) REFERENCES project.Tariff(model),
    registration_number VARCHAR(100) NOT NULL,
    color VARCHAR(100) NOT NULL
);

DROP TABLE IF EXISTS project.Driver_Car CASCADE;
CREATE TABLE project.Driver_Car (
    driver_car_id SERIAL PRIMARY KEY,
    car_id INTEGER REFERENCES project.Car(car_id),
    driver_id INTEGER REFERENCES project.Driver(driver_id)
);