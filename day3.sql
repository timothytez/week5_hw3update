--1) List all customers who live in Texas (use JOINs):

SELECT first_name, last_name, address.address_id
FROM customer
INNER JOIN address
ON address.address_id = customer.address_id

SELECT address, city.city
FROM address 
INNER JOIN city 
ON city.city_id = address.city_id;

-- GET ALL CUSOMTERS FROM CLARKSVILLE
SELECT * FROM CITY
WHERE city = 'Texas';

SELECT CONCAT(first_name,' ',last_name) AS full_name, address, city
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN CITY
ON address.city_id = city.city_id
WHERE city = 'Texas';
--Output = 0



--2) Get all payments above $6.99 with the Customer's Full Name:
SELECT amount, payment_id
FROM payment

SELECT first_name, last_name, payment
FROM customer
INNER JOIN payment
ON payment.customer_id = customer.customer_id
WHERE amount > 6.99




--3) Show all customer names who have made payments over $175 (use subqueries):
SELECT first_name, last_name, customer_id
FROM customer JOIN (
	SELECT payment.customer_id, amount
	FROM payment
	WHERE amount >175
);
	
	
	
	
--4) List all customers that live in Nepal (use the city table):
SELECT CONCAT(first_name,' ',last_name) AS full_name, address, city
FROM customer
JOIN address
ON customer.address_id = address.address_id
JOIN CITY
ON address.city_id = city.city_id



--5) Which staff member had the most transactions?
SELECT first_name, last_name, active
FROM staff





--6) How many movies of each rating are there?
SELECT rating,film
FROM film
ORDER BY  (rating)




--7) Show all customers who have made a single payment above $6.99 (Use Subqueries):
SELECT first_name, last_name, payment
FROM customer
INNER JOIN payment
ON payment.customer_id = customer.customer_id
WHERE amount > 6.99 




--8) How many free rentals did our stores give away?
SELECT CONCAT (rental, payment)
FROM rental
INNER JOIN payment
ON rental.customer_id = payment.customer_id









