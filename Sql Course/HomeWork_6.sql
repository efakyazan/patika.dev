Perform the following query scenarios on the dvdrental sample database.

1-What is the average of the values in the rental_rate column in the movie table?
---
select AVG(rental_rate) as ortalama from film
------------------------------------------------------------------------------------------------------------
2-How many 'C' characters from the movies in the movie table start with?
---
select count (*) from film
where title like 'C%'
------------------------------------------------------------------------------------------------------------
3-How many minutes is the longest (length) movie with rental_rate equal to 0.99 from the movies in the movie table?
---
select max(length) from film
where rental_rate = 0.99 
------------------------------------------------------------------------------------------------------------
4-How many different replacement_cost values are there for the movies longer than 150 minutes in the movie table?
---
select count(distinct replacement_cost) from film
where length >=150

