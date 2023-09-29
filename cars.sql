CREATE TABLE IF NOT EXISTS car
(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name VARCHAR(100),
    brand VARCHAR(100),
    type VARCHAR(100),
    year INTEGER(4)
);

INSERT INTO car (name,brand,type,year)
VALUES
('aircinq','renault','citadine','1972'),
('focus','ford','citadine','1970'),
('carrera','porsche','sportive','1235'),
('twingo','renault','mini','3589'),
('208 gt','peugeot','berline','2023'),
('gallardo','lamborghini','supersportive','2016');
