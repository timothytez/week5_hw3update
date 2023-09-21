-- Outer Query (Main)
-- Where column in (
-- sub query
--)


SELECT amount,payment_id
FROM payment 
WHERE amount> (
	SELECT AVG(amount)
	FROM payment
);

SELECT COUNT(payment_id)
FROM payment 
WHERE amount> (
	SELECT AVG(amount)
	FROM payment
);

SELECT film_id, title, language_id
FROM film 
WHERE LANGUAGE_id = (
	SELECT language_id
	FROM LANGUAGE
	WHERE name = 'English'
);


--All films with actor with last name of allen

SELECT title
FROM film
WHERE film_id IN(
	SELECT film_id
	FROM film_actor
	WHERE actor_id IN(
		SELECT actor_id
		FROM actor 
		WHERE last_name = 'Allen'
));


SELECT title
FROM film 
JOIN film_actor 
ON film.film_id = film_actor.film_id
JOIN actor 
ON actor.actor_id = film_actor.actor_id
WHERE last_name = 'Allen'
GROUP BY title
HAVING COUNT(last_name='Allen') >1;




-- Find all of the payments above staff member 1's avg payment amount

SELECT amount, staff_id
FROM payment
WHERE amount> (
	SELECT AVG(amount)
	FROM payment 
	WHERE staff_id = 1
)
ORDER BY amount ASC;

AVG(amount)
FROM payment 
WHERE payment = 'staff'
GROUP BY amount
HAVING COUNT(payment= 'staff')
