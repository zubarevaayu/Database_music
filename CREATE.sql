CREATE TABLE IF NOT EXISTS Genre(
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(30) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Artist(
	artist_id SERIAL PRIMARY KEY,
	artist_name VARCHAR(40) NOT NULL,
	nickname VARCHAR(40)
);

CREATE TABLE IF NOT EXISTS Artist_Genre(
	artist_id INTEGER REFERENCES Artist(artist_id),
	genre_id INTEGER REFERENCES Genre(genre_id)
);

CREATE TABLE IF NOT EXISTS Album(
	album_id SERIAL PRIMARY KEY,
	album_name VARCHAR(40) NOT NULL,
	album_year INTEGER NOT NULL CHECK (album_year > 1900)
);

CREATE TABLE IF NOT EXISTS Artist_Album(
	artist_id INTEGER REFERENCES Artist(artist_id),
	album_id INTEGER REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Track(
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(50) NOT NULL,
	duration INTEGER NOT NULL CHECK (duration > 0),
	album_id INTEGER REFERENCES Album(album_id)
);

CREATE TABLE IF NOT EXISTS Collection(
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(40) NOT NULL,
	collection_year INTEGER NOT NULL CHECK (collection_year > 1900)
);

CREATE TABLE IF NOT EXISTS Track_Collection(
	track_id INTEGER REFERENCES Track(track_id),
	collection_id INTEGER REFERENCES Collection(collection_id)
);

ALTER TABLE artist_album 
	ADD CONSTRAINT pk PRIMARY KEY (artist_id, album_id);
	
ALTER TABLE artist_genre 
	ADD CONSTRAINT pk2 PRIMARY KEY (artist_id, genre_id);

ALTER TABLE track_collection
	ADD CONSTRAINT pk3 PRIMARY KEY (track_id, collection_id);
	




	