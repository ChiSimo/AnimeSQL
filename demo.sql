UPDATE anime
SET start_year = 2001
WHERE title = 'Spirited Away';

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


-- studios
SELECT * FROM studios;

-- anime
SELECT * FROM anime;

-- seasons
SELECT * FROM seasons;

-- episodes
SELECT * FROM episodes ORDER BY episode_id;

-- genres
SELECT * FROM genres;

-- anime_genres (join table)
SELECT * FROM anime_genres;

-- posters
SELECT * FROM posters;