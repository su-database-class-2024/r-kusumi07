
SELECT category.name, AVG(DATE_PART('DAY', rental.return_date - rental.rental_date)) AS duration_avg  FROM category
JOIN film_category ON category.category_id = film_category.category_id
JOIN film  ON film_category.film_id = film.film_id
JOIN inventory ON film.film_id = inventory.film_id
JOIN rental ON inventory.inventory_id = rental.inventory_id
JOIN payment ON rental.rental_id = payment.rental_id
GROUP BY category.name;
