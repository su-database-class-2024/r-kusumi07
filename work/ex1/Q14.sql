
SELECT s.store_id, a.address, a.city
FROM store s
JOIN (SELECT * FROM address JOIN city ON address.city_id = city.city_id) a ON s.address_id = a.address_id;