create table if not exists Genre(
	id SERIAL primary key,
	name varchar(30) not null
);

create table if not exists Artists(
	id SERIAL primary key,
	name varchar(40) not null
);

create table if not exists GenreArtists(
	idartists integer references Artists(id),
	idGenre integer references Genre(id),
	constraint pk primary key (idartists, idGenre)
);

create table if not exists Album(
	id SERIAL primary key,
	name varchar(40) not null,
	yearalbum integer not null
);

create table if not exists Artists_Album(
	idArtists integer references Artists(id),
	idAlbum integer references Album(id),
	constraint pk2 primary key (idArtists, idAlbum)
);

create table if not exists Song(
	id SERIAL primary key,
	namesong varchar(40) not null,
	time TIME not null,
	idAlbum integer references Album(id)
);

create table if not exists Collection(
	id SERIAL primary key,
	name varchar(30) not null,
	Date integer not null
);

create table if not exists Collection_Song(
	idCollection integer references Collection(id),
	idSong integer references Song(id),
	constraint pk3 primary key (idCollection, idSong)
);
