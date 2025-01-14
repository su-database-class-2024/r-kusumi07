
SELECT country_id FROM city GROUP BY country_id HAVING COUNT(city) >= 20;