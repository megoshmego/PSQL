-- Comments in SQL Start with dash-dash --




--1. playstore=# SELECT * FROM analytics;


--2. playstore=# SELECT * FROM analytics WHERE id = 1880;


--3. playstore=# SELECT id, app_name FROM analytics WHERE last_updated = '2018-08-01';

 

--4. playstore=# SELECT category, COUNT(*) FROM analytics GROUP BY category; 

 

--5. playstore=# SELECT * FROM analytics ORDER BY reviews DESC LIMIT  1; 

 

--6. playstore=# SELECT * FROM analytics WHERE rating >= 4.8 ORDER BY reviews DESC LIMIT 1;

 

--7. playstore=# SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY avg DESC; 

 

--8. playstore=# SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;

 

--9. playstore=# SELECT * FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL ORDER BY rating DESC;

 

--10. playstore=# SELECT app_name FROM analytics WHERE rating < 3 AND reviews >= 10000;



--11. playstore=# SELECT * FROM analytics WHERE price BETWEEN 0.1 and 1 ORDER BY reviews DESC LIMIT 10; 

 

--12. playstore=# SELECT * FROM analytics WHERE last_updated LIMIT 1; 



--13. playstore=# SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);



--14. playstore=# SELECT * FROM analytics ORDER BY price DESC LIMIT 1; 



--15. playstore=# SELECT SUM(reviews) AS "All the Reviews" FROM analytics;



--16. playstore=# SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;

 

--17. playstore=# SELECT app_name, reviews, min_installs, min_installs / reviews AS proportion FROM analytics WHERE min_installs >= 100000 ORDER BY proportion DESC LIMIT 1; 

 
