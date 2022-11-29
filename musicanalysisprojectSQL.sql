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


create table years as (
select profanity.artist, profanity.title, popularity.year, profanity.perc_bad_words
from popularity 
inner join profanity on 
popularity.artist = profanity.artist and popularity.title = profanity.title
);

select * from years;


create table genres as (
select popularity.pop_rating, popularity.artist, popularity.title, popularity.genre, profanity.perc_bad_words
from popularity 
inner join profanity on 
popularity.artist = profanity.artist and popularity.title = profanity.title
);

select * from genres











