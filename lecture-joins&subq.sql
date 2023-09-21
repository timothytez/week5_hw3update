SELECT rental.rental_id, payment.customer_id, amount, rental.staff_id
FROM payment
JOIN rental
ON payment.rental_id = rental.rental_id
WHERE rental.customer_id = 341;

SELECT rental.rental_id,payment.customer_id,first_name,last_name,amount,rental.staff_id
FROM payment
JOIN rental
ON payment.rental_id = rental.rental_id
JOIN customer
ON customer.customer_id = rental.customer_id
WHERE rental.customer_id = 341;

SELECT payment.customer_id, first_name,last_name,
	SUM(amount) AS "Total Spent"
FROM payment
JOIN rental
ON payment.rental_id = rental.rental_id
JOIN customer
ON customer.customer_id = rental.customer_id
WHERE rental.customer_id = 341
GROUP BY payment.customer_id, first_name, last_name;

SELECT payment.customer_id, customer.first_name,customer.last_name,
	SUM(amount) AS "Total Spent", rental.staff_id, 
	CONCAT(staff.first_name, ' ', staff.last_name) AS "Worker Name"
FROM payment
JOIN rental
ON payment.rental_id = rental.rental_id
JOIN customer
ON customer.customer_id = rental.customer_id
JOIN staff
ON rental.staff_id = staff.staff_id
WHERE rental.customer_id = 341
GROUP BY payment.customer_id, customer.first_name, 
	customer.last_name, rental.staff_id, staff.first_name, staff.last_name;
	

SELECT *
FROM language;

SELECT *
FROM film
WHERE language_id != 1;

SELECT title, language.language_id
FROM film
INNER JOIN LANGUAGE
ON language.language_id = film.language_id;

SELECT title, language.language_id, name
FROM film
FULL OUTER JOIN language
ON language.language_id = film.language_id;

SELECT title, language.language_id
FROM film
RIGHT JOIN LANGUAGE
ON language.language_id = film.language_id;

SELECT title, language.language_id
FROM film
LEFT JOIN LANGUAGE
ON language.language_id = film.language_id;

-- GET ALL CUSOMTERS FROM CLARKSVILLE
SELECT * FROM CITY
WHERE city = 'Clarksville';

SELECT * FROM address
WHERE city_id = 123;

SELECT * FROM customer
WHERE address_id = 144;

SELECT CONCAT(first_name,' ',last_name) AS full_name, address, city
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN CITY
ON address.city = city.city_id
WHERE city = 'Clarksville';

--Find all customers who rented a movie that has an actor with first "Adam", name of the movie, and the first and last name of "Adam" actor
SELECT CONCAT(customer.first_name, ' ', customer.last_name) AS "Full Name", title, CONCAT(actor.first_name, ' ', actor.last_name) AS "Actor", city
FROM customer
JOIN rental
ON customer.customer_id = rental.customer_id
JOIN inventory
ON rental.inventory_id = inventory.inventory_id
JOIN film
ON inventory.film_id = film.film_id
JOIN film_actor
ON film.film_id = film_actor.film_id
JOIN actor
ON film_actor.actor_id = actor.actor_id
JOIN address
ON address.address_id = customer.address_id
JOIN city
ON address.city_id = city.city_id
WHERE actor.first_name = 'Adam';


SELECT CONCAT(first_name, ' ', last_name), country, city
FROM country
JOIN City
ON country.country_id = city.country_id
JOIN addess
ON address.city_id = city.city_id
JOIN staff
ON address.address_id = staff.address_id
WHERE country = 'Canada';

SELECT * 
FROM country	
WHERE country = 'Canada';