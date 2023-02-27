CREATE TABLE IF NOT EXISTS Genre(
	genre_id SERIAL PRIMARY KEY,
	genre_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS Singer(
	singer_id SERIAL PRIMARY KEY,
	singer_name TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS SingerGenre(
	singer_id INTEGER REFERENCES Singer(singer_id),
	genre_id INTEGER REFERENCES Genre(genre_id),
	CONSTRAINT pk PRIMARY KEY (singer_id, genre_id)
);

CREATE TABLE IF NOT EXISTS Album(
	album_id SERIAL PRIMARY KEY,
	album_name TEXT NOT NULL,
	was_published_at DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS SingerAlbum(
	singer_id INTEGER REFERENCES Singer(singer_id),
	album_id INTEGER REFERENCES Album(album_id),
	CONSTRAINT sa PRIMARY KEY (singer_id, album_id)
);

CREATE TABLE IF NOT EXISTS Digest(
	digest_id SERIAL PRIMARY KEY,
	digest_name TEXT NOT NULL,
	digest_publishing_year YEAR NOT NULL
);

CREATE TABLE IF NOT EXISTS Track(
	track_id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Album(album_id),
	digest_id INTEGER REFERENCES Digest(digest_id),
	track_name TEXT NOT NULL,
	duration TIME NOT NULL
);
