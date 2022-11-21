-- Creating tables
create table profanity(
	artist varchar not null,
	song_title varchar not null,
	total_words INT,
	total_bad_words INT,
	perc_profanity INT,
	primary key (artist, song_title)
);

-- Creating tables
create table popularity(
	artist varchar not null,
	song_title varchar not null,
	year_released date,
	genre varchar not null,
	pop_rating INT,
	primary key (artist, song_title)
);


-- Creating tables
create table years(
	artist varchar not null,
	song_title varchar not null,
	year_released date,
	perc_profanity INT,
	primary key (artist, song_title)
);


-- Creating tables
create table genres(
	artist varchar not null,
	song_title varchar not null,
	pop_rating INT,
	genre varchar not null,
	perc_profanity INT,
	primary key (artist, song_title)
);