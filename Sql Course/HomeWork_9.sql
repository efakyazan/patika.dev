Perform the following query scenarios on the dvdrental sample database.

1-Write the INNER JOIN query where we can see the city and country names in the city table and the country table together.
---
select city, country from city
inner join country on city.country_id = country.country_id
------------------------------------------------------------------------------------------------------------
2-We can see the customer table and the payment_id in the payment table together with the first_name and last_name names in the customer table
Write the INNER JOIN query.
---
select payment_id, first_name, last_name from customer
inner join payment on customer.customer_id = payment.customer_id
------------------------------------------------------------------------------------------------------------
3-In the customer table, we can see the rental_id in the rental table and the first_name and last_name names in the customer table together.
Write the INNER JOIN query.
---
select rental_id, first_name, last_name from customer
inner join rental  on rental.customer_id = customer.customer_id 
