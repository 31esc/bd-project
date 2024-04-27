CREATE INDEX idx_trip_user_id ON project.trip_details (user_id);
CREATE INDEX idx_trip_driver_id ON project.trip_details (driver_id);
CREATE INDEX idx_driver_id ON project.driver (driver_id);
CREATE INDEX idx_user_id ON project.user (user_id);
CREATE INDEX idx_car_model ON project.car (model);
