--GENRES

INSERT INTO genre
VALUES (1, 'Rock');

INSERT INTO genre
VALUES (2, 'Metal');

INSERT INTO genre
VALUES (3, 'Punk rock');

INSERT INTO genre
VALUES (4, 'Grunge rock');

INSERT INTO genre
VALUES (5, 'Heavy metal'); 

--SINGER 

INSERT INTO singer
VALUES (1, 'The Beatles');

INSERT INTO singer
VALUES (2, 'Pantera');

INSERT INTO singer
VALUES (3, 'Blink-182');

INSERT INTO singer
VALUES (4, 'Nirvana');

INSERT INTO singer
VALUES (5, 'Black Sabbath');

INSERT INTO singer
VALUES (6, 'Metalica');

INSERT INTO singer
VALUES (7, 'Pink Floyd');

INSERT INTO singer
VALUES (8, 'Alice in chains');

INSERT INTO singer
VALUES (9, 'Machine Gun Kelly');



--SINGERGENRE

INSERT INTO singergenre
VALUES (1, 1);

INSERT INTO singergenre
VALUES (2, 2);

INSERT INTO singergenre
VALUES (3, 3);

INSERT INTO singergenre
VALUES (4, 4);

INSERT INTO singergenre
VALUES (5, 5);

INSERT INTO singergenre
VALUES (6, 2);

INSERT INTO singergenre
VALUES (7, 5);

INSERT INTO singergenre
VALUES (8, 4);

INSERT INTO singergenre
VALUES (9, 4);

--ALBUM

INSERT INTO album
VALUES (1, 'Revolver', '1966-08-05');

INSERT INTO album
VALUES (2, 'Cowboys from Hell', '1988-06-24');

INSERT INTO album
VALUES (3, 'Cheshire Cat', '1995-02-17');

INSERT INTO album
VALUES (4, 'Nevermind', '1991-09-24');

INSERT INTO album
VALUES (5, 'Paranoid', '1970-09-18');

INSERT INTO album
VALUES (6, 'Master of Puppets', '1986-03-03');

INSERT INTO album
VALUES (7, 'The Dark Side of the Moon', '1973-03-01');

INSERT INTO album
VALUES (8, 'Dirt', '1992-09-29');

INSERT INTO album
VALUES (9, 'Tickets to my downfall', '2020-01-01');

INSERT INTO album
VALUES (10, 'Hotel Diablo', '2019-01-01');


--SINGERALBUM

INSERT INTO singeralbum
VALUES (1, 1);

INSERT INTO singeralbum
VALUES (2, 2);

INSERT INTO singeralbum
VALUES (3, 3);

INSERT INTO singeralbum
VALUES (4, 4);

INSERT INTO singeralbum
VALUES (5, 5);

INSERT INTO singeralbum
VALUES (6, 6);

INSERT INTO singeralbum
VALUES (7, 7);

INSERT INTO singeralbum
VALUES (8, 8);

INSERT INTO singeralbum
VALUES (9, 9);

INSERT INTO singeralbum
VALUES (9, 10);

--DIGEST

INSERT INTO digest
VALUES (1, 'Top Rock tracks', '2015-09-17');

INSERT INTO digest
VALUES (2, 'Top Metal tracks', '2004-04-05');

INSERT INTO digest
VALUES (3, 'Top Punk rock tracks', '2022-12-7');

INSERT INTO digest
VALUES (4, 'Top Grunge tracks', '2000-08-6');

INSERT INTO digest
VALUES (5, 'Top Heavy Metal tracks', '2003-03-02');

INSERT INTO digest
VALUES (6, 'Old but Gold', '2016-11-29');

INSERT INTO digest
VALUES (7, 'Best tracks ever', '2000-06-13');

INSERT INTO digest
VALUES (8, 'For All Times', '2009-07-14');

INSERT INTO digest 
VALUES (9, 'New Wave', '2019-08-18');

INSERT INTO digest 
VALUES (10, 'New Stars', '2020-06-17');

--TRACKS

INSERT INTO track
VALUES (1, 1, 1, 'Got to get you into my life', '00:02:29');

INSERT INTO track
VALUES (2, 2, 2, 'Heresy', '00:04:46');

INSERT INTO track
VALUES (3, 3, 3, 'Does my breath smell?', '00:02:38');

INSERT INTO track
VALUES (4, 4, 4, 'Smells like teen Spirit', '00:05:01');

INSERT INTO track
VALUES (5, 5, 5, 'War pigs', '00:07:54');

INSERT INTO track
VALUES (6, 6, 6, 'For whom the bell tolls', '00:04:14');

INSERT INTO track
VALUES (7, 7, 7, 'Time', '00:06:53');

INSERT INTO track
VALUES (8, 8, 8, 'Sickman', '00:05:29');

INSERT INTO track
VALUES (9, 4, 6, 'Polly', '00:02:53');

INSERT INTO track
VALUES (10, 7, 6, 'Money', '00:06:22');

INSERT INTO track
VALUES (11, 1, 8, 'Yellow submarine', '00:2:42');

INSERT INTO track
VALUES (12, 5, 7, 'Paranoid', '00:02:47');

INSERT INTO track
VALUES (13, 8, 6, 'Them bones', '00:02:30');

INSERT INTO track
VALUES (14, 1, 7, 'Taxman', '00:02:42');

INSERT INTO track
VALUES (15, 6, 8, 'Orion', '00:08:17');

INSERT INTO track(track_id, album_id, digest_id, track_name, duration)
VALUES (16, 9, 9, 'kiss kiss', '00:02:18'),
	   (17, 9, 9, 'all I know', '00:02:09'),
	   (18, 10, 10, 'Glass House', '00:03:21'),
	   (19, 10, NULL, 'Roulette', '00:03:02');


