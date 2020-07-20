#1
select mov_title, mov_year
from movies;

#2
select mov_year
from movies
where mov_title = 'American Beauty';

#3
select mov_title
from movies
where mov_year = '1999';

#4
select mov_title
from movies
where mov_year < 1998;

#5
select rev_name, mov_title
from movies, reviewer;

#6
select rev_name, num_o_ratings
from reviewer, rating
where num_o_ratings >= 7;

#7
select mov_title, num_o_ratings
from movies, rating
where num_o_ratings = null;

#8
select rev_name, num_o_ratings
from reviewer, rating
where num_o_ratings >= 0;

#9
select mov_title, dr_fname, dr_iname
from movies, director
where mov_title = 'Eyes wide shut';
