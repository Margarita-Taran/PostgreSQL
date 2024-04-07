CREATE TABLE IF NOT EXISTS Genre (
    id SERIAL PRIMARY KEY, 
    genre_name VARCHAR(100) NOT NULL);

CREATE TABLE IF NOT EXISTS Musician (
    id SERIAL PRIMARY KEY, 
    nickname VARCHAR(100) NOT NULL);

CREATE TABLE IF NOT EXISTS Genre_Musician (
    Genre_id INTEGER REFERENCES  Genre(id), 
    Musician_id INTEGER REFERENCES Musician(id), 
    CONSTRAINT Genre_Musician_pk PRIMARY KEY (Genre_id, Musician_id));

CREATE TABLE IF NOT EXISTS Album (
    id SERIAL PRIMARY KEY, 
    album_name VARCHAR(100) NOT NULL, 
    year_of_release INTEGER NOT NULL);

CREATE TABLE IF NOT EXISTS Albums_Musicians (
    Musician_id INTEGER REFERENCES Musician(id), 
    Album_id INTEGER REFERENCES Album(id), 
    CONSTRAINT Albums_Musicians_pk PRIMARY KEY (Musician_id, Album_id));

CREATE TABLE IF NOT EXISTS Song (
    id SERIAL PRIMARY KEY, 
    song_name VARCHAR(100) NOT NULL, 
    duration INTEGER NOT NULL, 
    Album_id INTEGER REFERENCES Album(id));

CREATE TABLE IF NOT EXISTS Collection (
    id SERIAL PRIMARY KEY, 
    collection_name VARCHAR(100) NOT NULL, 
    year_of_release INTEGER NOT NULL);

CREATE TABLE IF NOT EXISTS Song_Collection (
    Song_id INTEGER REFERENCES Song(id), 
    Collection_id INTEGER REFERENCES Collection(id), 
    CONSTRAINT Song_Collection_pk PRIMARY KEY (Song_id, Collection_id));