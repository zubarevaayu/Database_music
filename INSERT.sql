-- ЗАДАНИЕ 1.

--GENRES

INSERT INTO genre(genre_name)
VALUES ('Pop music')

INSERT INTO genre(genre_name)
VALUES ('Rock music')

INSERT INTO genre(genre_name)
VALUES ('Soundtracks')

SELECT *
FROM genre


--ARTISTS

INSERT INTO artist(artist_name, nickname) 
VALUES ('Adele', Null)

INSERT INTO artist(artist_name, nickname) 
VALUES ('ABBA', Null)

INSERT INTO artist(artist_name, nickname) 
VALUES ('Rihanna', Null)

INSERT INTO artist(artist_name, nickname) 
VALUES ('Nirvana', Null)

INSERT INTO artist(artist_name, nickname) 
VALUES ('Madonna', Null)

INSERT INTO artist(artist_name, nickname) 
VALUES ('Bon Jovi', Null)

INSERT INTO artist(artist_name, nickname) 
VALUES ('Imagine Dragons', Null)

SELECT *
FROM artist


--ARTIST_GENRE

INSERT INTO artist_genre(artist_id, genre_id)
VALUES (1, 1)

INSERT INTO artist_genre(artist_id, genre_id)
VALUES (1, 3)

INSERT INTO artist_genre(artist_id, genre_id)
VALUES (2, 1)

INSERT INTO artist_genre(artist_id, genre_id)
VALUES (2, 3)

INSERT INTO artist_genre(artist_id, genre_id)
VALUES (3, 1)

INSERT INTO artist_genre(artist_id, genre_id)
VALUES (3, 2)

INSERT INTO artist_genre(artist_id, genre_id)
VALUES (4, 2)

INSERT INTO artist_genre(artist_id, genre_id)
VALUES (5, 1)

INSERT INTO artist_genre(artist_id, genre_id)
VALUES (6, 2)

INSERT INTO artist_genre(artist_id, genre_id)
VALUES (7, 2)

SELECT *
FROM artist_genre


-- ALBUMS

--ABBA
INSERT INTO album(album_name, album_year)
VALUES ('Arrival', 1976)  

--Adele
INSERT INTO album(album_name, album_year)
VALUES ('21', 2011)

--Bon Jovi
INSERT INTO album(album_name, album_year)
VALUES ('The Ultimate Collection', 2010)

--Imagine Dragons
INSERT INTO album(album_name, album_year)
VALUES ('Origins', 2019)

--Rihanna 
INSERT INTO album(album_name, album_year)
VALUES ('Anti', 2016)

INSERT INTO album(album_name, album_year)
VALUES ('Unapologetic', 2012)

SELECT *
FROM album


--ARTIST_ALBUM

INSERT INTO artist_album(artist_id, album_id)
VALUES (1, 2)

INSERT INTO artist_album(artist_id, album_id)
VALUES (2, 1)

INSERT INTO artist_album(artist_id, album_id)
VALUES (6, 3)

INSERT INTO artist_album(artist_id, album_id)
VALUES (7, 4)

INSERT INTO artist_album(artist_id, album_id)
VALUES (3, 5)

INSERT INTO artist_album(artist_id, album_id)
VALUES (3, 6)

SELECT *
FROM artist_album


--TRACK

--ABBA
INSERT INTO track(track_name, duration, album_id)
VALUES ('Dancing Queen', 3.44, 1)

INSERT INTO track(track_name, duration, album_id)
VALUES ('My love, My life', 3.51, 1)

INSERT INTO track(track_name, duration, album_id)
VALUES ('Money, money, money', 3.06, 1)

INSERT INTO track(track_name, duration, album_id)
VALUES ('Knowing me, knowing you', 4.01, 1)

INSERT INTO track(track_name, duration, album_id)
VALUES ('Mamma Mia', 3.32, 1)

--Adele
INSERT INTO track(track_name, duration, album_id)
VALUES ('Rolling in the deep', 3.48, 2)

INSERT INTO track(track_name, duration, album_id)
VALUES ('Skyfall', 4.46, 2)

INSERT INTO track(track_name, duration, album_id)
VALUES ('Set fire to the rain', 4.03, 2)

--Bon Jovi
INSERT INTO track(track_name, duration, album_id)
VALUES ('Its my life', 3.43, 3)

INSERT INTO track(track_name, duration, album_id)
VALUES ('Always', 4.48, 3)

INSERT INTO track(track_name, duration, album_id)
VALUES ('Runaway', 3.52, 3)

--Imagine Dragons
INSERT INTO track(track_name, duration, album_id)
VALUES ('Natural', 3.09, 4)

INSERT INTO track(track_name, duration, album_id)
VALUES ('Boomerang', 3.07, 4)

INSERT INTO track(track_name, duration, album_id)
VALUES ('Machine', 3.01, 4)

--Rihanna
INSERT INTO track(track_name, duration, album_id)
VALUES ('Diamonds', 3.45, 6)

INSERT INTO track(track_name, duration, album_id)
VALUES ('Consideration', 2.41, 5)

INSERT INTO track(track_name, duration, album_id)
VALUES ('James Joint', 1.12, 5)

SELECT *
FROM track


--COLLECTION

INSERT INTO collection(collection_name, collection_year)
VALUES ('The Singles', 2024)

INSERT INTO collection(collection_name, collection_year)
VALUES ('Popular hits 2020', 2020)

INSERT INTO collection(collection_name, collection_year)
VALUES ('Rock hits', 2019)

INSERT INTO collection(collection_name, collection_year)
VALUES ('Best soundtracks', 2018)

SELECT *
FROM collection


--TRACK_COLLECTION

INSERT INTO track_collection(track_id, collection_id)
VALUES (1, 1)

INSERT INTO track_collection(track_id, collection_id)
VALUES (5, 2)

INSERT INTO track_collection(track_id, collection_id)
VALUES (8, 3)

INSERT INTO track_collection(track_id, collection_id)
VALUES (6, 4)

INSERT INTO track_collection(track_id, collection_id)
VALUES (11, 4)

INSERT INTO track_collection(track_id, collection_id)
VALUES (1, 4)

INSERT INTO track_collection(track_id, collection_id)
VALUES (3, 4)

INSERT INTO track_collection(track_id, collection_id)
VALUES (15, 2)

INSERT INTO track_collection(track_id, collection_id)
VALUES (16, 2)

SELECT *
FROM track_collection


