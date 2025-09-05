CREATE TABLE studios (
    studio_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT NOT NULL,
    founded_year INT
);

INSERT INTO studios (name, country, founded_year) VALUES
('Studio Ghibli', 'Japan', 1985),
('Toei Animation', 'Japan', 1948),
('Studio Pierrot', 'Japan', 1979),
('Madhouse', 'Japan', 1972);

SELECT * FROM studios;
