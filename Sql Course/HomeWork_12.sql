Perform the following query scenarios on the dvdrental sample database.

1-The movie length is shown in the length column in the movie table. How many movies are longer than the average movie length?
---
select count(*) from film
where length > 
(
select avg(length) from film
)
------------------------------------------------------------------------------------------------------------
2-How many movies have the highest rental_rate in the movie table?
---
select count(*) from film
where rental_rate  =
(
select max(rental_rate) from film
)
------------------------------------------------------------------------------------------------------------
3-In the film table, list the films with the lowest rental rate and the lowest replacement cost.
---
select * from film 
where title = any 

(select title from film
where replacement_cost = 
(select min(replacement_cost)from film)or
rental_rate = (select min(rental_rate)from film))
------------------------------------------------------------------------------------------------------------
4-In the payment table, list the customers who make the most purchases.
---
SELECT first_name , last_name , SUM(amount) AS Maximum_Shopping FROM customer
INNER JOIN payment ON customer.customer_id = payment.customer_id
GROUP BY payment.customer_id , customer.first_name ,customer.last_name
ORDER BY SUM(amount) DESC
LIMIT 10 ;
