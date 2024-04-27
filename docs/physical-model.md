# Физическая модель

---

Таблица `User`:

| Название          | Описание                   | Тип данных     | Ограничение                                          |
|-------------------|----------------------------|----------------|------------------------------------------------------|
| `user_id`         | Идентификатор пользователя | `SERIAL`       | `PRIMARY KEY`                                        |
| `firstname`       | Имя пользователя           | `VARCHAR(100)` | `NOT NULL CHECK(firstname SIMILAR TO '[A-Z][a-z]*')` |
| `surname`         | Фамилия пользователя       | `VARCHAR(100)` | `NOT NULL CHECK(surname SIMILAR TO '[A-Z][a-z]*')`   | 
| `email`           | Email                      | `VARCHAR(100)` | `NOT NULL CHECK (email LIKE '%@%')`                  |
| `bank_acc_number` | Номер банковского счета    | `VARCHAR(16)`  | `NOT NULL`                                           |
| `telephone`       | Номер телефона             | `VARCHAR(16)`  | `NOT NULL CHECK (telephone SIMILAR TO '[0-9]{7,16}')`|

Таблица `User_History`:

| Название          | Описание                       | Тип данных     | Ограничение                                          |
|-------------------|--------------------------------|----------------|------------------------------------------------------|
| `user_id`         | Идентификатор пользователя     | `INTEGER`      | `FOREIGN KEY`                                        |
| `bank_acc_number` | Номер банковского счета        | `VARCHAR(16)`  | `NOT NULL`                                           |
| `telephone`       | Номер телефона                 | `VARCHAR(16)`  | `NOT NULL CHECK (telephone SIMILAR TO '[0-9]{7,16}')`|
| `history_data`    | Дата создания записи в истории | `TIMESTAMP`    | `NOT NULL`                                           |


Таблица `Trip_Details`:

| Название          | Описание                   | Тип данных     | Ограничение                 |
|-------------------|----------------------------|----------------|-----------------------------|
| `user_id`         | Идентификатор пользователя | `INTEGER`      | `FOREIGN KEY`               |
| `driver_id`       | Идентификатор водителя     | `INTEGER`      | `FOREIGN KEY`               |
| `start_location`  | Координаты начала поездки  | `POINT`        | `NOT NULL`                  |
| `destination`     | Координаты конца поездки   | `POINT`        | `NOT NULL`                  |
| `start_time`      | Время начала поездки       | `TIMESTAMP`    | `NOT NULL`                  |
| `end_time`        | Время конца поездки        | `TIMESTAMP`    | `NOT NULL`                  |
| `price`           | Цена за поездку            | `INTEGER`      | `NOT NULL CHECK(price > 0)` |

Таблица `Driver`:

| Название             | Описание                  | Тип данных     | Ограничение                                          |
|----------------------|---------------------------|----------------|------------------------------------------------------|
| `driver_id`          | Идентификатор водителя    | `SERIAL`       | `PRIMARY KEY`                                        |
| `firstname`          | Имя водителя              | `VARCHAR(100)` | `NOT NULL CHECK(firstname SIMILAR TO '[A-Z][a-z]*')` |
| `surname`            | Фамилия водителя          | `VARCHAR(100)` | `NOT NULL CHECK(surname SIMILAR TO '[A-Z][a-z]*')`   |
| `email`              | Email                     | `VARCHAR(100)` | `NOT NULL CHECK (email LIKE '%@%')`                  |
| `bank_acc_number`    | Номер банковского счета   | `VARCHAR(16)`  | `NOT NULL`                                           |
| `telephone`          | Номер телефона            | `VARCHAR(16)`  | `NOT NULL CHECK (telephone SIMILAR TO '[0-9]{7,16}')`|
| `date_of_employment` | Дата устройства на работу | `TIMESTAMP`    | `NOT NULL`                                           |
| `date_of_dismissal`  | Дата увольнения           | `TIMESTAMP`    |                                                      |

Таблица `Driver_Car`:

| Название             | Описание                  | Тип данных     | Ограничение   |
|----------------------|---------------------------|----------------|---------------|
| `car_id`             | Идентификатор автомобиля  | `INTEGER`      | `FOREIGN KEY` |
| `driver_id`          | Идентификатор водителя    | `INTEGER`      | `FOREIGN KEY` |

Таблица `Car`:

| Название               | Описание                  | Тип данных     | Ограничение   |
|------------------------|---------------------------|----------------|---------------|
| `car_id`               | Идентификатор автомобиля  | `SERIAL`       | `PRIMARY KEY` |
| `model`                | Модель автомобиля         | `VARCHAR(100)` | `FOREIGN KEY` |
| `registration_number ` | Гос номер автомобиля      | `VARCHAR(100)` | `NOT NULL`    |
| `color`                | Цвет автомобиля           | `VARCHAR(100)` | `NOT NULL`    |

Таблица `Tariff`:

| Название               | Описание                  | Тип данных     | Ограничение   |
|------------------------|---------------------------|----------------|---------------|
| `model`                | Модель автомобиля         | `VARCHAR(100)` | `PRIMARY KEY` |
| `tariff`               | Тариф автомобиля          | `ENUM`         | `NOT NULL`    |