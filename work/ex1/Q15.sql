
SELECT * FROM city c
WHERE NOT EXISTS ( SELECT * FROM address a WHERE c.city_id = a.city_id);