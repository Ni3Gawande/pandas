
select * from movies

select director, len(director)ll from movies order by ll desc
select * from orderss

select count(*) from movies;
select count(*) from series;
select count(*) from movie_series;

--source table movies and series normal validation

select * from movies;
select * from movie_series;

--Check duplicate 
select id,count(*)count from movies group by id having count (*)>1

select id,type,title,director,country,date_added,release_year,rating,listed_in,movie_duration,count(*)count from Movies
group by id,type,title,director,country,date_added,release_year,rating,listed_in,movie_duration having count(*)>1

--check null values
select count(*)-count(id)id,
count(*)-count(type)type,
count(*)-count(title)title,
count(*)-count(director)director,
count(*)-count(country)country,
count(*)-count(date_added)date_added,
count(*)-count(release_year)release_year,
count(*)-count(listed_in)listed_in,
count(*)-count(movie_duration)movie_duration
from Movies
--check rejected data
select * from movies where type <> 'Movie'

--Metadata lol

select * from INFORMATION_SCHEMA.Columns where table_name='Movie'
create table movie(id int primary key,type varchar(10),title varchar(200),director varchar(250),country varchar(50),
date_added date,release_year int,rating varchar(50),listed_in varchar(100),movie_duration int)
--insert into movie select * from movies;
--drop table movies
select * from movie;

--column level validation as here is no transformation judt do direct 1:1 validation

select id,type,title,director,country,date_added,release_year,rating,listed_in from movie
except
select id,type,title,director,country,date_added,release_year,rating,listed_in from movie_series where type='Movie'

select id,type,title,director,country,date_added,release_year,rating,listed_in from movie_series where type='Movie'
except
select id,type,title,director,country,date_added,release_year,rating,listed_in from movie

--Do same for the series
