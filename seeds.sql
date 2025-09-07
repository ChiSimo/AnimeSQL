-- studios
INSERT INTO studios (name, country, founded_year) VALUES
('Studio Ghibli', 'Japan', 1985),
('Toei Animation', 'Japan', 1948),
('Studio Pierrot', 'Japan', 1979),
('Madhouse', 'Japan', 1972);

-- anime
INSERT INTO anime (studio_id, title, start_year) VALUES
(1, 'Spirited Away', 2001),
(1, 'My Neighbor Totoro', 1988),
(2, 'One Piece', 1999),
(2, 'Dragon Ball Z', 1989),
(3, 'Naruto', 2002),
(3, 'Bleach', 2004),
(4, 'Death Note', 2006),
(4, 'Hunter x Hunter', 2011);


-- seasons
INSERT INTO seasons (anime_id, season_n, year) VALUES
(3, 1, 1999),
(3, 2, 2000),
(5, 1, 2002),
(5, 2, 2003),
(7, 1, 2006),
(8, 1, 2011);


-- episodes
INSERT INTO episodes (season_id, episode_n, title, episode_date, duration_min) VALUES
(1, 1, 'I''m Luffy!', '1999-10-20', 24),
(1, 2, 'The Great Adventure', '1999-10-27', 24),
(3, 1, 'Enter Naruto', '2002-10-03', 23),
(3, 2, 'My Name is Konohamaru!', '2002-10-10', 23),
(5, 1, 'Rebirth', '2006-10-04', 22),
(5, 2, 'Departure', '2011-10-02', 23);


-- genres
INSERT INTO genres (name) VALUES
('Action'),
('Adventure'),
('Fantasy'),
('Supernatural'),
('Drama');


-- anime_genres (join table)
INSERT INTO anime_genres (anime_id, genre_id) VALUES
(1, 3), -- Spirited Away - Fantasy
(2, 3), -- My Neighbor Totoro - Fantasy
(3, 1), -- One Piece - Action
(3, 2), -- One Piece - Adventure
(4, 1), -- Dragon Ball Z - Action
(4, 2), -- Dragon Ball Z - Adventure
(5, 1), -- Naruto - Action
(5, 2), -- Naruto - Adventure
(6, 1), -- Bleach - Action
(6, 4), -- Bleach - Supernatural
(7, 4), -- Death Note - Supernatural
(7, 5), -- Death Note - Drama
(8, 1), -- Hunter x Hunter - Action
(8, 2); -- Hunter x Hunter - Adventure


-- posters
INSERT INTO posters (anime_id, poster) VALUES
(1, 'https://example.com/spirited_away.jpg'),
(2, 'https://example.com/my_neighbor_totoro.jpg');

