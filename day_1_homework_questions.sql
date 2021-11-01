-- HOMEWORK 11/1/21
-- 1. 2
-- 2. 5607
-- 3. Multiple films are tied at 8
-- 4. 0
-- 5. 1 - 8040
-- 6. 378
-- 7. film_id 508 - 15 actors
-- 8. 13
-- 9. 3
-- 10. 5 ratings, PG-13 has the most
-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT COUNT(last_name)
FROM actor
WHERE last_name LIKE 'Wahlberg';



-- 2. How many payments were made between $3.99 and $5.99?
SELECT COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;



-- 3. What film does the store have the most of? (search in inventory)
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id
ORDER BY film_id DESC;



-- 4. How many customers have the last name ‘William’?
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William';



-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(staff_id)
FROM rental
GROUP BY staff_id
ORDER BY staff_id;



-- 6. How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;



-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(DISTINCT actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT DESC;



-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT store_id, last_name
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es'
GROUP BY store_id, last_name;



-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250(count of rental ids) for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(rental_id) > 250;



-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT COUNT(DISTINCT film_id), rating
FROM film
GROUP BY rating
ORDER BY COUNT(DISTINCT film_id) DESC;

