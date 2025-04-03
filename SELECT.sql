--ЗАДАНИЕ 2

--1. Название и продолжительность самого длительного трека.
SELECT track_name, MAX(duration)
FROM track
WHERE duration = (SELECT max(duration) FROM track)
GROUP BY track_name 

--2. Название треков, продолжительность которых не менее 3,5 минут.
SELECT track_name, duration
FROM track
WHERE duration >= 3.5 

--3. Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT collection_name, collection_year 
FROM collection
WHERE collection_year BETWEEN 2018 AND 2020

--4. Исполнители, чьё имя состоит из одного слова.
SELECT artist_name 
FROM artist
WHERE artist_name NOT LIKE '% %'

--5. Название треков, которые содержат слово «мой» или «my».
SELECT track_name
FROM track
WHERE lower(track_name) LIKE '%my%'


-- ЗАДАНИЕ 3.
-- 1. Количество исполнителей в каждом жанре.
SELECT g.genre_id, COUNT(artist_id) as "Кол-во исполнителей"
FROM genre g
LEFT JOIN artist_genre ag ON g.genre_id = ag.genre_id
GROUP BY g.genre_id 

-- 2. Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT a.album_id, a.album_name, COUNT(track_id) as "Кол-во треков"
FROM track t
LEFT JOIN album a ON a.album_id = t.album_id
WHERE a.album_year BETWEEN 2019 AND 2020
GROUP BY a.album_id

--3. Средняя продолжительность треков по каждому альбому.
SELECT a.album_id, ROUND(AVG(t.duration), 2) as "Средняя продолжительность"
FROM album a 
LEFT JOIN track t ON a.album_id = t.album_id 
GROUP BY a.album_id

--4. Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT ar.artist_name
FROM artist_album al
LEFT JOIN album a ON a.album_id = al.album_id
LEFT JOIN artist ar ON ar.artist_id = al.artist_id
WHERE a.album_year != 2020

--5. Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT a2.artist_name, c.collection_name
FROM track_collection tc
LEFT JOIN track t ON t.track_id = tc.track_id
LEFT JOIN album a ON a.album_id = t.album_id
LEFT JOIN artist_album aa ON aa.album_id = a.album_id
LEFT JOIN artist a2 ON a2.artist_id = aa.artist_id 
LEFT JOIN collection c ON c.collection_id = tc.collection_id
WHERE a2.artist_name = 'ABBA'
GROUP BY a2.artist_name, c.collection_name


-- Задание 4.

--1. Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT a.album_name, COUNT(ag.genre_id)
FROM artist_genre ag
LEFT JOIN artist a2 ON a2.artist_id = ag.artist_id
LEFT JOIN artist_album aa ON aa.artist_id = a2.artist_id
LEFT JOIN album a ON a.album_id = aa.album_id
GROUP BY a2.artist_id, a.album_id
HAVING COUNT(ag.genre_id) > 1

--2. Наименования треков, которые не входят в сборники.
SELECT t.track_name, tc.collection_id
FROM track t  
LEFT JOIN track_collection tc ON t.track_id = tc.track_id
WHERE tc.collection_id IS NULL
ORDER BY t.track_id ASC

--3. Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT a2.artist_name, t.duration
FROM track t 
LEFT JOIN album a ON a.album_id = t.album_id
LEFT JOIN artist_album aa ON aa.album_id = a.album_id
LEFT JOIN artist a2 ON a2.artist_id = aa.artist_id
WHERE t.duration = (SELECT MIN(t.duration) FROM track t)

--4. Названия альбомов, содержащих наименьшее количество треков.
select a.album_name, count(t.track_id) as "Кол-во треков"
from track t
left join album a on a.album_id = t.album_id
group by a.album_name
order by "Кол-во треков" asc
limit 1

