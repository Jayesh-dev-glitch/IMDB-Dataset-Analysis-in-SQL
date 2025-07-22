create database imdb;
use imdb;

select * from movies;

-- Check for duplicate entries 
select movie_name,year,director,count(*) from movies
group by movie_name,year,director
having count(*)>1;

-- Top 5 movies with the highest rating 
select movie_name,rating,votes
from movies
order by rating desc
limit 5;

-- Movies that were released in the year 2023
select movie_name,year,rating,votes
from movies
where year=2023
order by rating desc;

-- Popular moviess that are highly rated and have a significant number of votes
select movie_name,rating,votes
from movies
where rating>7 and votes>100000
order by rating desc;

-- Average meta score for movies released in 2023
select avg(meta_score) as average_meta_score
from movies
where year=2023;

-- How many movies fall under each pg rating
select pg_rating,count(*) as movie_count
from movies
group by pg_rating;

-- Movies by a specific director
select movie_name,rating,year
from movies
where director="Christopher nolan";

-- Movies sorted by their duration 
select movie_name,duration,rating
from movies
order by duration desc;

-- Which genre has the most movies 
select genre,count(*) as movie_count
from movies
group by genre
order by movie_count desc;

-- All movies of lenardo dicarpo 
select movie_name,cast,year
from movies
where cast like '%leonardo dicaprio%';

-- Total number of votes for movies released in 2023
select sum(votes) as total_votes
from movies
where year=2023;

-- Movies released between 2000 and 2023
select movie_name,year,rating
from movies
where year between 2000 and 2023
order by year desc;

-- All movies in the 'biography' genre
select movie_name,genre,rating
from movies
where genre like '%Biography%'
order by rating desc;

-- Movies with the highest number of votes
select movie_name,votes,rating
from movies
order by votes desc
limit 5;

-- oldest movie in the dataset 
select movie_name,year
from movies
order by year asc
limit 1;

-- how many movies each director has made
select director,count(*) as movie_count
from movies
group by director
order by movie_count desc;

-- Movies with a runtime of more than 2 hours
select movie_name,duration,rating
from movies
where duration>'2h 00m'
order by duration desc;

-- Total number of r-rated movies 
select count(*) as r_rated_movies
from movies
where pg_rating='R';

-- movies that have multiple directors listed
select movie_name,director
from movies
where director like '%,%'
order by movie_name;

-- movies that are family friendly(pg or pg-13)
select movie_name,rating,pg_rating
from movies
where pg_rating in ('pg','pg-13')
order by rating desc;

-- movies released each year 
select year,count(*) as movie_count
from movies
group by year
order by year asc;

-- calculate the average movie rating
select avg(rating) as average_rating 
from movies;

select movie_name,duration
from movies
order by duration desc
limit 1;

select movie_name,duration
from movies
order by duration asc
limit 1;

select movie_name,genre,rating
from movies
where genre like '%Action%' and genre like '%Adventure%'
order by rating desc;
