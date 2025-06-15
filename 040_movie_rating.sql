# Write your MySQL query statement below
(
  select users.name as results
  from users
  join movierating on users.user_id = movierating.user_id
  group by users.user_id, users.name
  order by count(*) desc, users.name
  limit 1
)
union all
(
  select movies.title as results
  from movies
  join movierating on movies.movie_id = movierating.movie_id
  where movierating.created_at between '2020-02-01' and '2020-02-29'
  group by movies.movie_id, movies.title
  order by avg(movierating.rating) desc, movies.title
  limit 1
)