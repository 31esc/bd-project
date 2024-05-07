CREATE INDEX idx_trip_user_id ON project.trip_details (user_id);
CREATE INDEX idx_trip_driver_id ON project.trip_details (driver_id);
CREATE INDEX idx_trip_end_time ON project.trip_details (end_time);