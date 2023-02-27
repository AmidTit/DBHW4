--Количество исполнителей в каждом из жанров
SELECT genre_name, COUNT(singer_name) FROM genre g 
LEFT JOIN singergenre sg ON g.genre_id = sg.genre_id
LEFT JOIN  singer s ON sg.singer_id = s.singer_id 
GROUP BY g.genre_name 
ORDER BY COUNT(s.singer_id) DESC;

--Колиство трэков в альбомах 2019, 2020 годов
SELECT album_name, was_published_at, COUNT(track_name) FROM album a 
LEFT JOIN track t ON a.album_id = t.album_id
WHERE a.was_published_at BETWEEN '2019-01-01' AND '2020-12-31'
GROUP BY a.album_name, a.was_published_at;

--Средняя продолжительность трэков по каждому альбому
SELECT album_name, AVG(duration) FROM album a 
LEFT JOIN track t ON a.album_id = t.album_id
GROUP BY a.album_name
ORDER BY AVG(t.duration) DESC;

--Группы, которые не выпускали альбомы в 2020
SELECT DISTINCT singer_name FROM singer s
WHERE s.singer_name NOT IN (
	SELECT singer_name FROM singer s
	LEFT JOIN singeralbum sa ON s.singer_id = sa.singer_id 
	LEFT JOIN album a ON sa.album_id = a.album_id 
	WHERE a.was_published_at BETWEEN '2020-01-01' AND '2020-12-31'
)
ORDER BY s.singer_name;

--Название сборников, где присутсвует исполнитель Nirvana
SELECT DISTINCT digest_name FROM digest d
LEFT JOIN track t ON d.digest_id = t.digest_id 
LEFT JOIN album a ON t.album_id = a.album_id 
LEFT JOIN singeralbum sa ON a.album_id = sa.album_id 
LEFT JOIN singer s ON sa.singer_id = s.singer_id 
WHERE s.singer_name ILIKE '%nirvana%'

--Название альбомов, в которых присутствуют исполнители более чем 1 жанра
--P.s таких не будет
SELECT album_name FROM album a 
LEFT JOIN singeralbum sa ON a.album_id = sa.album_id 
LEFT JOIN singer s ON sa.singer_id = s.singer_id 
LEFT JOIN singergenre sg ON s.singer_id = sg.singer_id 
LEFT JOIN genre g ON sg.genre_id = g.genre_id 
GROUP BY a.album_name 
HAVING COUNT(DISTINCT g.genre_name) > 1;

--Название трэков, которые не входят в сборники
SELECT track_name FROM track t
LEFT JOIN digest d ON t.digest_id = t.digest_id
WHERE d.digest_name IS NULL;

--Исполнитель с самым коротким трэком 
SELECT singer_name, track_name, duration FROM singer s
LEFT JOIN singeralbum sa ON s.singer_id = sa.singer_id 
LEFT JOIN album a ON sa.album_id = a.album_id 
LEFT JOIN track t ON a.album_id = t.album_id
GROUP BY s.singer_name, t.track_name, t.duration 
HAVING t.duration = (SELECT MIN(duration) FROM track);

--Название альбомов с наименьшим количеством трэков
SELECT album_name FROM album a 
LEFT JOIN track t ON a.album_id = t.album_id
WHERE t.album_id IN (
	SELECT album_id FROM track
	GROUP BY album_id 
	HAVING COUNT(track_id) = (
		SELECT COUNT(track_id) FROM track 
		GROUP BY album_id 
		ORDER BY COUNT 
		LIMIT 1
	)
)
ORDER BY a.album_id;


