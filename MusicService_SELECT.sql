-- название и год выхода альбомов, вышедших в 2018 году;
SELECT  name, year 
FROM    album a 
WHERE   "year" = 2018;

-- название и продолжительность самого длительного трека;
SELECT      name, duration  
FROM        track t 
ORDER BY    duration DESC 
LIMIT       1;

-- название треков, продолжительность которых не менее 3,5 минуты;
SELECT  name 
FROM    track t 
WHERE   duration >= 210;

-- названия сборников, вышедших в период с 2018 по 2020 год включительно;
SELECT  name
FROM    compilation c 
WHERE   year    BETWEEN 2018 AND 2020;

-- исполнители, чье имя состоит из 1 слова;
SELECT  name 
FROM    artist a 
WHERE   name    NOT LIKE '% %';

-- название треков, которые содержат слово "мой"/"my".
SELECT  name 
FROM    track t 
WHERE   lower(name) LIKE '% my %' 
OR      lower(name) LIKE '% мой %';