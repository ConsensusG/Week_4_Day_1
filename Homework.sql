--1. How many actors are there with the last name ‘Wahlberg’?

SELECT first_name, last_name
FROM actor
WHERE last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99? (I'm changing it to 60.99 and 70.99 so it actually finds stuff)

select amount
from payment
where amount between 60.99 and 70.99

--3. What film does the store have the most of? (search in inventory)

select (film_id), COUNT (film_id)
from INVENTORY
group by film_id 
order by count desc
--I wouldn't want to put 'limit 1' here because a bunch of films are tied for first

--4. How many customers have the last name ‘Williams’?

SELECT last_name, COUNT(*) as count
FROM customer
WHERE last_name = 'Williams'
GROUP BY last_name;


--5. What store employee (get the id) sold the most rentals?

select staff_id, count(staff_id)
from rental
group by staff_id
order by count desc

--6. How many different district names are there?

select count (distinct district)
from address

--7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT MAX(film_id) AS Max_Num_Actors
FROM film_actor

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

SELECT COUNT(*) as count
FROM customer
WHERE last_name LIKE '%es';


--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

select count(amount), amount 
from payment 
where customer_id > 380 and customer_id  < 430 
group by amount 
having count(amount) > 250
order by count desc;

--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

select count(film_id), rating 
from film 
group by rating 
order by count desc;
