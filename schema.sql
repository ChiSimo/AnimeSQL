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


CREATE TABLE IF NOT EXISTS anime (
    anime_id SERIAL PRIMARY KEY,
    studio_id INT NOT NULL REFERENCES studios(studio_id),
    title TEXT NOT NULL,
    start_year INT
);

INSERT INTO anime (studio_id, title, start_year) VALUES
(1, 'Spirited Away', 2001),
(1, 'My Neighbor Totoro', 1988),
(2, 'One Piece', 1999),
(2, 'Dragon Ball Z', 1989),
(3, 'Naruto', 2002),
(3, 'Bleach', 2004),
(4, 'Death Note', 2006),
(4, 'Hunter x Hunter', 2011);


SELECT * FROM anime;

UPDATE anime
SET start_year = 2001
WHERE title = 'Spirited Away';



