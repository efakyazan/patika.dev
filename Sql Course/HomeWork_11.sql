Perform the following query scenarios on the dvdrental sample database.

1-Let's sort all the data for the first_name columns in the actor and customer tables.
---
select first_name from actor 
UNION
select first_name from customer 
------------------------------------------------------------------------------------------------------------
2-Let's sort the intersecting data for the first_name columns in the actor and customer tables.
---
select first_name from actor 
INTERSECT
select first_name from customer 
------------------------------------------------------------------------------------------------------------
3-For the first_name columns in the actor and customer tables, let's sort the data in the first table but not in the second table.
---
select first_name from actor 
EXCEPT
select first_name from customer 
------------------------------------------------------------------------------------------------------------
4-Let's also do the first 3 queries for repeating data.
---
select first_name from actor 
UNION ALL
select first_name from customer 

--------------------------------------------------------

select first_name from actor 
INTERSECT ALL
select first_name from customer 

--------------------------------------------------------

select first_name from actor 
EXCEPT ALL
select first_name from customer 
