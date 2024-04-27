CREATE SCHEMA IF NOT EXISTS project;

DROP TABLE IF EXISTS project.User CASCADE;
CREATE TABLE project.User (
    user_id SERIAL PRIMARY KEY,
    firstname VARCHAR(100) NOT NULL CHECK(firstname SIMILAR TO '[A-Z][a-z]*'),
    surname VARCHAR(100) NOT NULL CHECK(surname SIMILAR TO '[A-Z][a-z]*'),
    email VARCHAR(100) NOT NULL CHECK (email LIKE '%@%'),
    bank_acc_number VARCHAR(16) NOT NULL,
    telephone VARCHAR(16) NOT NULL CHECK (telephone SIMILAR TO '[0-9]{7,16}')
);

DROP TABLE IF EXISTS project.User_History CASCADE;
CREATE TABLE project.User_History (
    user_id INTEGER REFERENCES project.User(user_id),
    bank_acc_number VARCHAR(16) NOT NULL,
    telephone VARCHAR(16) NOT NULL CHECK (telephone SIMILAR TO '[0-9]{7,16}'),
    history_data TIMESTAMP NOT NULL,
    PRIMARY KEY (user_id, history_data)
);

DROP TABLE IF EXISTS project.Driver CASCADE;
CREATE TABLE project.Driver (
    driver_id SERIAL PRIMARY KEY,
    firstname VARCHAR(100) NOT NULL CHECK(firstname SIMILAR TO '[A-Z][a-z]*'),
    surname VARCHAR(100) NOT NULL CHECK(surname SIMILAR TO '[A-Z][a-z]*'),
    email VARCHAR(100) NOT NULL CHECK (email LIKE '%@%'),
    bank_acc_number VARCHAR(16) NOT NULL,
    telephone VARCHAR(16) NOT NULL CHECK (telephone SIMILAR TO '[0-9]{7,16}'),
    date_of_employment TIMESTAMP NOT NULL,
    date_of_dismissal TIMESTAMP DEFAULT NULL
);

DROP TABLE IF EXISTS project.Trip_Details CASCADE;
CREATE TABLE project.Trip_Details (
    user_id INTEGER REFERENCES project.User(user_id),
    driver_id INTEGER REFERENCES project.Driver(driver_id),
    start_location POINT NOT NULL,
    destination POINT NOT NULL,
    start_time TIMESTAMP NOT NULL,
    end_time TIMESTAMP NOT NULL,
    price INTEGER NOT NULL CHECK(price > 0),
    PRIMARY KEY (user_id, driver_id, start_time)
);

DROP TYPE IF EXISTS tariff_type CASCADE;
CREATE TYPE tariff_type as ENUM ('econom', 'comfortplus', 'business', 'vip', 'ultimate');

DROP TABLE IF EXISTS project.Tariff CASCADE;
CREATE TABLE project.Tariff (
    model VARCHAR(100) PRIMARY KEY,
    tariff tariff_type NOT NULL
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
    car_id INTEGER REFERENCES project.Car(car_id),
    driver_id INTEGER REFERENCES project.Driver(driver_id),
    PRIMARY KEY (car_id, driver_id)
);
