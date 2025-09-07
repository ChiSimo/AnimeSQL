
# AnimeSQL

This project is part of my Relational Database Scripts Assessment. 
The idea is to build a small database based on Japanese Anime, with tables for studios, anime, seasons, episodes, genres and posters. 


![alt text](<ERD AnimeSQL.png>)


## Relationships Between Tables

- Studio to Anime: One studio can create many anime
- Anime to Seasons: One Anime can have many seasons
- Seasons to Episodes: One season can have many episodes
- Anime to Genres: many to many relationship managed through the 'Anime_genres' table
- Anime to Posters: one to one relationship, each anime has one poster. \

## Data in Google Sheet
I first created the tables in Google Sheets with data validation to simulate constraints, this helped me to visualize the data and working on the relationships. 
Below are the screenshots:

![alt text](<Screenshots Data Google Sheets /Studio.png>) 
![alt text](<Screenshots Data Google Sheets /Anime.png>) 
![alt text](<Screenshots Data Google Sheets /Seasons.png>) 
![alt text](<Screenshots Data Google Sheets /Episodes.png>) 
![alt text](<Screenshots Data Google Sheets /Genres.png>) 
![alt text](<Screenshots Data Google Sheets /Anime_Genres.png>) 
![alt text](<Screenshots Data Google Sheets /Anime_Poster.png>)


## Project Structure

- schema.sql: contains all the tables
- seeds.sql: initial data (studios, anime, seasons, episodes, genres,anime_genres and poster)
- demo.sql: CRUD, joints and aggregate quueries
- ERD.png



## How to Run

1. Run 'schema.sql' to create the tables
2. Run 'seeds.sql' to insert the data
3. Run 'demo.sql' to test queries
4. Playground for experiments.

