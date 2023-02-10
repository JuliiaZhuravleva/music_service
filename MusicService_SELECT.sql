-- �������� � ��� ������ ��������, �������� � 2018 ����;
SELECT  album_name, album_year 
FROM    album a 
WHERE   album_year = 2018;

-- �������� � ����������������� ������ ����������� �����;
SELECT      track_name, duration  
FROM        track t 
ORDER BY    duration    DESC 
LIMIT       1;

-- �������� � ����������������� ������ ����������� ����� (������ �������);
SELECT  track_name, duration 
FROM    track t 
WHERE   duration = (SELECT MAX(duration) FROM track t2);

-- �������� ������, ����������������� ������� �� ����� 3,5 ������;
SELECT  track_name 
FROM    track t 
WHERE   duration >= 210;

-- �������� ���������, �������� � ������ � 2018 �� 2020 ��� ������������;
SELECT  compilation_name
FROM    compilation c 
WHERE   compilation_year    BETWEEN 2018 AND 2020;

-- �����������, ��� ��� ������� �� 1 �����;
SELECT  artist_name 
FROM    artist a 
WHERE   artist_name    NOT LIKE '% %';

-- �������� ������, ������� �������� ����� "���"/"my".
SELECT  track_name 
FROM    track t 
WHERE   track_name          iLIKE '% my %' 
OR      lower(track_name)   LIKE '% ��� %';