INSERT INTO genre(genre_name)
VALUES('Pop'), ('Rap'), ('Country'), ('Jazz'), ('Rock');

INSERT INTO musicians(nickname)
VALUES('Celine Dion'), ('Ed Sheeran'), ('Drake'), ('Eminem'), ('Carrie Underwood'), ('Frank Sinatra'), ('Imagine Dragons');

INSERT INTO genre_musician(genre_id, musician_id)
VALUES(1,1), (1,2), (2,3), (2,4), (3,5), (4,6), (5,7);

INSERT INTO album(album_name, year_of_release)
VALUES("Let's Talk About Love", 1997), ('No.6 Collaborations Project', 2019), ('Scorpion', 2018), 
('Music to Be Murdered Bye', 2020), ('Cry Pretty', 2018), ('It Might As Well Be Swing', 1964), ('Origins', 2018);

INSERT INTO albums_musicians(musician_id, album_id)
VALUES(1,1), (2,2), (3,3), (4,4), (5,5), (6,6), (7,7);

INSERT INTO song(song_name, duration, album_id)
VALUES('My Heart Will Go On', 281, 1), ('Be The Man', 279, 1), ('Best Part of Me', 243, 2), ('Beautiful People', 206, 2), 
('Nice for What', 210, 3), ('In My Feelings', 217, 3), ('Godzilla', 210, 4), ('Darkness', 337, 4), 
('Cry Pretty', 246, 5), ('Love Wins', 228, 5), ('Fly Me to the Moon', 150, 6), ('I Wish You Love', 156, 6), ('Natural', 189, 7), ('Bad Liar', 260, 7);

INSERT INTO Collection(collection_name, year_of_release)
VALUES('Collection1', 1998), ('Collection2',  2000), ('Collection3', 2019), ('Collection4', 2018), ('Collection5', 2018), ('Collection6', 2020);

INSERT INTO song_collection(song_id, collection_id)
VALUES(1,1), (11,1), (2,2), (12,2), (3,3), (5,3), (6,4), (10,4), (9,5), (13,5), (4,6), (7,6), (8,6), (14,6);