Perform the following query scenarios on the dvdrental sample database.

1-Group the movies in the movie table according to their rating values.
---
select film, rating from film
group by film, rating
order by rating
------------------------------------------------------------------------------------------------------------
2-When we group the films in the film table according to the replacement_cost column, the replacement_cost value with more than 50 films
and list the corresponding number of films.
---
select replacement_cost, Count(film) from film 
group by replacement_cost
having Count(film) > 50
------------------------------------------------------------------------------------------------------------
3- What are the number of customers corresponding to the store_id values in the customer table?
---
select store_id,count(*) from customer
group by store_id
------------------------------------------------------------------------------------------------------------
4-After grouping the city data in the city table according to the country_id column, select the country_id containing the maximum number of cities.
and share the number of cities.
---
select country_id, count(*)as toplam from city
group by country_id
order by count(*)desc
limit 1









