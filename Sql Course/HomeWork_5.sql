Perform the following query scenarios on the dvdrental sample database.

1-List the 5 longest (length) movies in the movie table and the movie title (title) ends with the 'n' character.
---
select * from film
where title LIKE '%n'
order by length desc
limit 5
------------------------------------------------------------------------------------------------------------
2-List the second 5 shortest (length) movies in the movie table and the movie title (title) ends with the 'n' character.
---
select * from film
where title LIKE '%n'
order by length
limit 5
------------------------------------------------------------------------------------------------------------
3-Sort the first 4 data, provided that store_id is 1 in the descending order according to the last_name column in the customer table.
---
select last_name from customer
where store_id=1
order by last_name desc
limit 4
