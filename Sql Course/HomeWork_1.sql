Perform the following query scenarios on the dvdrental sample database.

1- Sort the data in the title and description columns in the movie table.
---
SELECT TITLE,DESCRIPTION
FROM FILM;
------------------------------------------------------------------------------------------------------------
2-Sort the data in all columns in the movie table with the movie length greater than 60 AND less than 75.
---
SELECT *
FROM FILM
WHERE LENGTH > 60 AND LENGTH < 75;
------------------------------------------------------------------------------------------------------------
3-Sort the data in all columns in the movie table with rental_rate 0.99 AND replacement_cost 12.99 OR 28.99.
---
SELECT *
FROM FILM
WHERE rental_rate = 0.99 and (replacement_cost = 12.99 or replacement_cost = 28.99);
------------------------------------------------------------------------------------------------------------
4-What is the value in the last_name column of the customer whose value is 'Mary' in the first_name column of the customer table?
---
SELECT first_name, last_name
FROM customer
WHERE first_name = 'Mary';
------------------------------------------------------------------------------------------------------------
5-Rank the data in the movie table that DOES NOT have a length greater than 50, but also a rental_rate of 2.99 or 4.99.
---
SELECT *
FROM film 
WHERE NOT length>50 and (rental_rate != 2.99 or rental_rate != 4.99);
	
