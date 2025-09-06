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

CREATE TABLE IF NOT EXISTS seasons (
    season_id SERIAL PRIMARY KEY,
    anime_id INT NOT NULL REFERENCES anime(anime_id),
    season_n INT NOT NULL,
    year INT 
);

INSERT INTO seasons (anime_id, season_n, year) VALUES
(3, 1, 1999),
(3, 2, 2000),
(5, 1, 2002),
(5, 2, 2003),
(7, 1, 2006),
(8, 1, 2011);

SELECT * FROM seasons;

CREATE TABLE IF NOT EXISTS episodes (
    episode_id SERIAL PRIMARY KEY,
    season_id INT NOT NULL REFERENCES seasons(season_id),
    episode_n INT NOT NULL,
    title TEXT NOT NULL,
    episode_date DATE, 
    duration_min INT
);

INSERT INTO episodes (season_id, episode_n, title, episode_date, duration_min) VALUES
(1, 1, 'I''m Luffy!', '1999-10-20', 24),
(1, 2, 'The Great Adventure', '1999-10-27', 24),
(2, 1, 'Enter Naruto', '2002-10-03', 23),
(3, 2, 'My Name is Konohamaru!', '2002-10-10', 23),
(5, 1, 'Rebirth', '2006-10-04', 22),
(5, 2, 'Departure', '2011-10-02', 23);

SELECT * FROM episodes ORDER BY episode_id;


DELETE FROM episodes
WHERE episode_id = 6;

INSERT INTO episodes (season_id, episode_n, title, episode_date, duration_min) 
VALUES (6, 1, 'Departure', '2011-10-02', 23);

SELECT * FROM episodes ORDER BY episode_id;

SELECT episode_id, season_id, episode_n, title
FROM episodes
WHERE episode_id = 6;


SELECT * FROM episodes WHERE episode_id = 6;

INSERT INTO episodes (season_id, episode_n, title, episode_date, duration_min) VALUES
(6, 1, 'Departure', '2011-10-02', 23);

SELECT * FROM seasons;



