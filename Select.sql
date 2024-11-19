select namesong, max(time) from song 
group by namesong 
limit 1;

select namesong from song
where time >= '00:03:30'

select name from collection
where date between 2018 and 2020

select name from artists 
where name not like '% %'

select namesong from song
where namesong like '%my%' or namesong like '%мой%'

select g."name" , count(idgenre) from genreartists gt
left join genre g on g.id = gt.idgenre 
group by "name" 

select count(namesong) from song s
left join album a on s.idalbum = a.id 
where yearalbum between 2019 and 2020

select a.name , avg(time) from song s
left join album a on s.idalbum = a.id 
group by name;

select a."name" from artists a 
left join artists_album aa on a.id = aa.idartists 
left join album a2 ON a2.id = aa.idalbum 
where yearalbum != 2020

select distinct (c."name") from collection c 
left join collection_song cs on cs.idcollection = c.id 
left join song s on cs.idsong = s.id 
left join album a on a.id = s.idalbum 
left join artists_album aa on a.id = aa.idartists
left join artists a2 on a2.id = a.id 
where a2."name" like 'Джизус'