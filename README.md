# Проект "Alex Taxi"

---

База данных для управления такси, которая позволяет отслеживать информацию о пользователях, водителях, поездках, автомобилях и тарифах.

---

Таблица `User` содержит информацию о зарегистрированных пользователях, их личные данные и контактную информацию.

Таблица `Trip_Details` хранит информацию о каждой поездке, включая идентификатор пользователя, идентификатор водителя, маршрут, время начала и окончания поездки, а также стоимость.

Таблица `Driver` содержит данные о водителях такси, включая их личные данные, контактную информацию и даты устройства на работу и увольнения.

Таблица `Driver_Car` связывает информацию о водителях и их автомобилях, позволяя отслеживать, какой водитель управляет каким автомобилем.

Таблица `Car` содержит информацию о доступных автомобилях такси, их моделях, гос номерах и цветах.

Таблица `Tariff` предоставляет информацию о тарифах для каждой модели автомобиля, определяя стоимость поездки в зависимости от используемой модели.

Таблица `User_History` хранит историю изменений атрибутов пользователей.

---

БД имеет 3 НФ. Таблица `User_History` предназначена для реализации версионирования SCD 4.