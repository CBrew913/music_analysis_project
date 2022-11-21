-- Creating tables

CREATE TABLE Profanity(
	Artist VARCHAR NOT NULL,
	Song_title VARCHAR NOT NULL,
	total_words INT,
	total_bad_words INT,
	perc_profanity INT,
	PRIMARY KEY (Artist, Song_title)
	;)

