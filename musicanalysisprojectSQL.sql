-- Creating tables
create table profanity(
	artist varchar not null,
	title varchar not null,
	total_words INT not null,
	total_bad_words INT not null,
	perc_bad_words REAL not null,
	primary key (artist, title)
);

select * from profanity 



-- Creating tables
create table popularity(
	artist varchar not null,
	title varchar not null,
	year INT,
	genre varchar not null,
	pop_rating INT,
	primary key (artist, title)
);


select * from popularity 

-- Creating tables
create table years(
	artist varchar not null,
	title varchar not null,
	year INT,
	perc_profanity INT,
	primary key (artist, title)
);


-- Creating tables
create table genres(
	artist varchar not null,
	title varchar not null,
	pop_rating INT,
	genre varchar not null,
	perc_profanity INT,
	primary key (artist, title)
);


select * from profanity


