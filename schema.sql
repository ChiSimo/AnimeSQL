CREATE TABLE studios (
    studio_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT NOT NULL,
    founded_year INT
);

CREATE TABLE IF NOT EXISTS anime (
    anime_id SERIAL PRIMARY KEY,
    studio_id INT NOT NULL REFERENCES studios(studio_id),
    title TEXT NOT NULL,
    start_year INT
);

CREATE TABLE IF NOT EXISTS seasons (
    season_id SERIAL PRIMARY KEY,
    anime_id INT NOT NULL REFERENCES anime(anime_id),
    season_n INT NOT NULL,
    year INT 
);


CREATE TABLE IF NOT EXISTS episodes (
    episode_id SERIAL PRIMARY KEY,
    season_id INT NOT NULL REFERENCES seasons(season_id),
    episode_n INT NOT NULL,
    title TEXT NOT NULL,
    episode_date DATE, 
    duration_min INT
);


CREATE TABLE IF NOT EXISTS genres (
    genre_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL UNIQUE
);


CREATE TABLE IF NOT EXISTS anime_genres (
    anime_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (anime_id, genre_id),
    FOREIGN KEY (anime_id) REFERENCES anime(anime_id),
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);


CREATE TABLE IF NOT EXISTS posters ( 
    anime_id INT PRIMARY KEY REFERENCES anime(anime_id),
    poster TEXT NOT NULL
);

