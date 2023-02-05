-- �������� � ��� ������ ��������, �������� � 2018 ����;
SELECT  name, year 
FROM    album a 
WHERE   "year" = 2018;

-- �������� � ����������������� ������ ����������� �����;
SELECT      name, duration  
FROM        track t 
ORDER BY    duration DESC 
LIMIT       1;

-- �������� ������, ����������������� ������� �� ����� 3,5 ������;
SELECT  name 
FROM    track t 
WHERE   duration >= 210;

-- �������� ���������, �������� � ������ � 2018 �� 2020 ��� ������������;
SELECT  name
FROM    compilation c 
WHERE   year    BETWEEN 2018 AND 2020;

-- �����������, ��� ��� ������� �� 1 �����;
SELECT  name 
FROM    artist a 
WHERE   name    NOT LIKE '% %';

-- �������� ������, ������� �������� ����� "���"/"my".
SELECT  name 
FROM    track t 
WHERE   lower(name) LIKE '% my %' 
OR      lower(name) LIKE '% ��� %';