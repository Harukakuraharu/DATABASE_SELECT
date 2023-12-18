--задание 2.1
select name_song, duration_song from songs
where duration_song = (select max(duration_song) FROM songs);

--задание 2.2 (исправленное)
select name_song, duration_song as dur from songs
where duration_song >= '00:03:30'
order by dur desc;

--задание 2.3
select name_collection, year_release from collections
where year_release between 2018 and 2020;

--задание 2.4
select artist_name from artists
where artist_name not like '% %';

--задание 2.5 (исправленное)
select name_song from songs
where name_song ilike 'my %' or name_song ilike '% my' or name_song ilike '% my %' or name_song ilike 'my' 
or name_song ilike 'мой %' or name_song ilike '% мой' or name_song ilike '% мой %' or name_song ilike 'мой';


--задание 3.1 (один исполнитель подходит под несколько жанров, поэтому число такое большое)
select genre_name, count(artist_id) from genre_artist ga 
join genres g on ga.genre_id = g.genre_id
group by genre_name
order by count(artist_id);

--задание 3.2(исправлено)
select count(name_song) from songs s
join albums a  on s.album_id = a.album_id
where year_release between 2019 and 2020;

--задание 3.3
select name_album, avg(duration_song) from albums a
join songs s on s.album_id = a.album_id
group by name_album;

--задание 3.4 (исправлено)
select artist_name from artists a
where artist_name not in (select artist_name from artists a join album_artist aa on a.artist_id=aa.artist_id join albums a2 on a2.album_id=aa.album_id 
where year_release = '2020');


--задание 3.5 
select name_collection, artist_name from collections c 
join collection_song cs on cs.collection_id = c.collection_id
join songs s on s.song_id = cs.song_id
join albums a on s.album_id = a.album_id
join album_artist aa on a.album_id = aa.album_id 
join artists a2 on aa.artist_id = a2.artist_id 
where artist_name like '%Deep%'
group by name_collection, artist_name;


--задание 4.1 (исправлено)
select distinct name_album from albums a 
join album_artist aa on aa.album_id = a.album_id 
join artists ar on ar.artist_id = aa.artist_id 
join genre_artist ga on ga.artist_id = ar.artist_id 
group by name_album, ga.artist_id
having count(genre_id) > 1;


--задание 4.2
select name_song from songs s 
full join collection_song cs on cs.song_id = s.song_id 
full join collections c on c.collection_id = cs.collection_id
where name_collection is null;

--задание 4.3
select artist_name, name_song, duration_song from artists a 
join album_artist aa on aa.artist_id = a.artist_id 
join albums a2 on a2.album_id = aa.album_id 
join songs s on s.album_id = aa.album_id 
group by artist_name, name_song, duration_song
having duration_song <= (select min(duration_song)  from songs);

--задание 4.4 (исправлено)
select name_album from albums a 
join songs s on s.album_id = a.album_id
group by name_album
having count(song_id) = (select count(song_id) from songs s group by album_id order by 1 limit 1);






