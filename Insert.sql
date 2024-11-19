insert into genre (name)
values('Рэп');

insert into genre(name)
values('Рок');

insert into genre(name)
values('Поп');

insert into artists (name)
values('Macan'), ('Daryana'), ('Джизус')

insert into artists (name)
values('Масло черного тмина')

insert into album (name, yearalbum)
values('1000 км до мечты', 2020), ('Pop empire', 2018), ('Начало новой эры', 2019)

insert into song (id, namesong, "time", idalbum)
values (1 ,'Пути неисповедимы', '00:03:55', 3)

insert into song (namesong, "time", idalbum)
values('Гроза', '00:02:20', 3), ('Friends', '00:04:20', 1), ('Автомат', '00:01:30', 2), ('Asphalt 8', '00:02:30', 1),
('myRap', '00:05:21', 2);

insert into collection (name, date)
values('Хиты 2018', 2018), ('Хиты 2019', 2019), ('Хиты 2020', 2020), ('Вспомним классику', 2021);

insert into collection_song (idcollection, idsong)
values(1, 4),(1, 6)

insert into collection_song (idcollection, idsong)
values(2, 1),(2, 2)

insert into collection_song (idcollection, idsong)
values(3, 3),(3, 5)

insert into collection_song (idcollection, idsong)
values(4, 3),(4, 5),(4, 2),(4, 1)

insert into artists_album (idartists, idalbum)
values(1, 1), (2, 2), (3, 3), (4, 3)

insert into genreartists (idartists, idgenre)
values(1, 1), (2, 3), (2, 1), (3, 1), (3, 2), (4, 2)

