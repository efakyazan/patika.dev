Perform the following query scenarios on the dvdrental sample database.

1-List the country names in the country column of the country table, starting with the 'A' character and ending with the 'a' character.
---
SELECT country 
FROM country 
WHERE country LIKE 'A%a'
------------------------------------------------------------------------------------------------------------
2-List the country names in the country column of the country table, consisting of at least 6 characters and ending with the 'n' character.
---
SELECT country 
FROM country 
WHERE country LIKE '%_____n'
------------------------------------------------------------------------------------------------------------
3-Containing at least 4 'T' characters from the movie names in the title column of the movie table, regardless of upper or lower case letters.
---
SELECT title
FROM film
WHERE title ILIKE '%T%T%T%T%'
------------------------------------------------------------------------------------------------------------
4-From the data in all the columns in the movie table, the title starting with the 'C' character and the length (length) greater than 90 and the rental_rate is 2.99
Sort the data.
---
SELECT *
FROM film
WHERE title LIKE 'C%' AND length > 90 and rental_rate = 2.99
