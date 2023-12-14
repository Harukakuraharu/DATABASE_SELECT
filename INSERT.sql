--заполнение таблиц

insert into artists (artist_name)
values ('Black Sabbath'), ('Ария'), ('Lynyrd Skynyrd'), ('Deep Purple'), ('Dio');

--select * from artists;

insert into genres (genre_name)
values ('Rock'), ('Heavy metal'), ('Rock and roll'), ('Blues');

update genres 
set genre_name = 'Blues-rock'
where genre_id = 4;

--select * from genres;

insert into albums (name_album, year_release)
values ('Heaven&Hell', 1980), ('Paranoid', 1970), ('Holy Diver', 1983), 
	('Мания Величия', 1985), ('Burn', 1974), ('The Essential Lynyrd Skynyrd', 1998);

update albums
set year_release = '2019'
where album_id = 6; 

update albums
set year_release = '2020'
where album_id = 5; 
--select * from albums; 

insert into songs (album_id, name_song, duration_song)
values (1, 'Heaven and Hell', '00:06:57'), (1, 'Wishing Well', '00:04:04'), (2, 'Paranoid', '00:02:46'), 
	(2, 'Planet Caravan', '00:04:27'), (3, 'Holy Diver', '00:05:54'), (3, 'Do not Talk To Stangers', '00:04:52'), 
	(4, 'Тореро', '00:05:28'), (4, 'Бивни черных скал', '00:04:51'), (5, 'Sail Away', '00:05:52'), 
	(5, 'You Fool No One', '00:04:59'), (6, 'Sweet Home Alabama', '00:04:45'), (6, 'Free Bird', '00:09:09');

insert into songs (album_id, name_song, duration_song)
values (2, 'Iron Man', '00:06:12')

update songs 
set name_song = 'Throw My Bones'
where song_id = 10; 

--select * from songs;

insert into collections (name_collection, year_release)
values ('The Complete Collection', 2008), ('This Time Around', 2007), ('Рок-легенды', 1996), ('Rock and Roll', 2001);

update collections 
set year_release = 2019
where collection_id = 4; 

--select * from collections;


insert into album_artist (album_id, artist_id)
values (1, 1), (2, 1), (3, 5), (4, 2), (5, 4), (6, 3);

--select * from album_artist;

insert into collection_song (collection_id, song_id)
values (1, 11), (1, 12), 
	(2, 2), (2, 3), (2, 6), (2, 9), (2, 11), 
	(3, 7), (3, 8), 
	(4, 1), (4, 4), (4, 5), (4, 9), (4, 10), (4, 11), (4, 12);


--select * from collection_song;

insert into genre_artist (genre_id, artist_id)
values (1, 1), (1, 2), (1, 3), (1, 4), (1, 5),
	(2, 1), (2, 2), (2, 4), (2, 5),
	(3, 3),
	(4, 3);

--select * from genre_artist;