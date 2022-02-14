create table if not exists singer_list (
	id serial primary key,
	singer_name varchar(40) not null unique,
	singer_aliase varchar (40)
);

create table if not exists genre_list (
	id serial primary key,
	genre_name varchar(40) not null unique,
	singer_id integer references singer_list(id)
);

create table if not exists album_list (
	id serial primary key,
	album_name varchar(40) not null unique,
	singer_id integer references singer_list(id),
	release_year integer  not null 
);

create table if not exists track_list (
	id serial primary key,
	track_name varchar(40) not null unique,
	track_length integer not null,
	album_id integer references album_list(id)
);