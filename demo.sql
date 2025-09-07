
-- UPDATE example: Changed start_year of 'Spirited Away' to 2001
UPDATE anime
SET start_year = 2001
WHERE title = 'Spirited Away';


-- DELETE example: Removed the episode 'Departure' from season 2 of Naruto
DELETE FROM episodes
WHERE title = 'Departure' AND episode_date = '2011-10-02';


-- INSERT example: Add "Departure" episode to Naruto Season 2
INSERT INTO episodes (season_id, episode_n, title, episode_date, duration_min) 
VALUES (4, 1, 'Departure', '2011-10-02', 23);


-- SELECT: get "Departure" episode 
SELECT episode_id, season_id, episode_n, title
FROM episodes
WHERE title = 'Departure' AND episode_date


-- FILTER: get episodes longer than 23 minutes
SELECT episode_id, title, duration_min
FROM episodes
WHERE duration_min > 23;

-- JOIN: anime titles with their studio names
SELECT a.title, s.name AS studio_id
FROM anime a
JOIN studios s ON a.studio_id = s.studio_id;


-- JOIN: anime titles with their genres
SELECT a.title, g.name AS genre
FROM anime a
JOIN anime_genres ag ON a.anime_id = ag.anime_id
JOIN genres g ON ag.genre_id = g.genre_id;

-- AGGREGATE: count episodes per anime
SELECT a.title, COUNT(episode_id) AS episode_count
FROM anime a
JOIN seasons se ON a.anime_id = se.anime_id
JOIN episodes e ON se.season_id = e.season_id
GROUP BY a.title;


-- AGGREGATE: find the first and last episode dates for each anime
SELECT a.title,
      MIN(e.episode_date) AS first_episode_date,
      MAX(e.episode_date) AS last_episode_date
FROM anime a
JOIN seasons se ON a.anime_id = se.anime_id
JOIN episodes e ON se.season_id = e.season_id
GROUP BY a.title;








