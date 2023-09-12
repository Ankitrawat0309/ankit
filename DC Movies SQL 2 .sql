CREATE TABLE [dbo].['DC Movies$'] (
[movie_title] nvarchar(255),
[release_date] nvarchar(255),
[duration (mins)] float,
[budget ($)] float,
[US_gross ($)] float,
[worldwide_gross ($)] float,
[imdb] float,
[metascore] float,
[tomatometer] float,
[audience_score] float
)

---Basic Statistics:
Select * from['DC Movies$']

Select Count(movie_title) as Total_Movies from dbo.['DC Movies$']

Select AVG([duration (mins)]) as Avg_Duration from dbo.['DC Movies$']

select top 1 movie_title,budget as Most_Expensive_Movie
from dbo.['DC Movies$']
order by budget desc

Select AVG (imdb) as Avg_IMDB, AVG (Metascore) as Avg_Metascore
from dbo.['DC Movies$']

Select  movie_title,[worldwide_gross ($)] as Top_Crossing_WorldWide
from dbo.['DC Movies$']
order by[worldwide_gross ($)] desc


select top 1  movie_title,[worldwide_gross ($)] as Top_Crossing_WorldWide
from dbo.['DC Movies$']
order by[worldwide_gross ($)] 
---Basic Statistics:

select movie_title , (imdb) as Above_avg_IMDB
from ['DC Movies$']
where (imdb) > 6.530769231

select movie_title ,(Metascore) as Above_Avg_Metascore
from ['DC Movies$']
where (Metascore)>55.53846154

select movie_title,[worldwide_gross ($)]-[budget ($)] as Most_Profitabe_Movie
from dbo.['DC Movies$']
order by Most_Profitabe_Movie desc

select sum([worldwide_gross ($)]) as Total_Gross_World
from dbo.['DC Movies$']

select top 1 movie_title,[worldwide_gross ($)]-[budget ($)] as Most_Profitabe_Movie
from dbo.['DC Movies$']
order by Most_Profitabe_Movie desc

----Relationships and Trends:
select * from dbo.[DC_Movies _Year]

select [worldwide_gross ($)] , Years
from dbo.['DC Movies$'] 
join dbo.[DC_Movies _Year] on dbo.['DC Movies$'].movie_title=dbo.[DC_Movies _Year].movie_title
order by Years desc

select [worldwide_gross ($)] , Years
from dbo.['DC Movies$'] 
join dbo.[DC_Movies _Year] on dbo.['DC Movies$'].movie_title=dbo.[DC_Movies _Year].movie_title
where Years in (2020,2023)

select sum([worldwide_gross ($)]) as Total_World_Gross, Years
from dbo.['DC Movies$'] 
join dbo.[DC_Movies _Year] on dbo.['DC Movies$'].movie_title=dbo.[DC_Movies _Year].movie_title
group by Years
order by Years desc

select top 1 movie_title , (imdb) as Top_Movie_IMDB
from ['DC Movies$']

















