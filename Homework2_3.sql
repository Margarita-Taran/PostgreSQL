SELECT song_name, duration FROM song
WHERE duration = (SELECT MAX(duration) FROM song);

SELECT song_name FROM song
WHERE duration >= 210;

SELECT collection_name FROM collection
WHERE year_of_release BETWEEN 2018 AND 2020;

SELECT nickname FROM musician 
WHERE nickname LIKE '%% %%';

SELECT song_name FROM song
WHERE song_name LIKE '%My%'; 

SELECT g.genre_name, COUNT (m.musician_id) FROM genre g
JOIN genre_musician m ON g.id = m.genre_id
GROUP BY g.genre_name;

SELECT a.album_name, a.year_of_release, COUNT (s.song_id) FROM album a
JOIN song s ON a.id = s.album_id
WHERE a.year_of_release BETWEEN 2019 AND 2020
GROUP BY a.album_name, a.year_of_release;

SELECT a.album_name, AVG(s.duration) FROM album a
JOIN song s ON a.id = s.album_id
GROUP BY a.album_name;

SELECT m.nickname FROM musician m
JOIN albums_musicians am ON m.id = am.musician_id
JOIN album a ON a.id = am.album_id
WHERE m.nickname NOT IN (SELECT nickname FROM albums_musicians WHERE year_of_release = 2020);

SELECT c.collection_name FROM collection c
JOIN song_collection sc ON c.id = sc.collection_id
JOIN song s ON s.id = sc.song.id
JOIN album a ON a.id = s.album_id
JOIN albums_musicians am ON a.id = am.album_id
JOIN musician m ON m.id = am.musician_id
WHERE m.nickname LIKE '%Drake%';