-- Comments in SQL Start with dash-dash --
--1--
SELECT app_name FROM analytics WHERE id = 1880;
--2--
SELECT app_name, id FROM analytics WHERE last_updated = '2018-08-01';
--3--
SELECT category, COUNT(category) FROM analytics GROUP BY category;
--4--
SELECT app_name, rating, reviews FROM analytics WHERE rating <= 5.0  ORDER BY rating DESC LIMIT 5;
--5--
SELECT app_name, MAX(reviews) AS most_reviews FROM analytics WHERE rating >= 4.8 GROUP BY app_name ORDER BY most_reviews DESC LIMIT 1;
--6--
SELECT category, AVG(RATING) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;
--7--
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
--8--
SELECT app_name, min_installs, rating FROM analytics WHERE min_installs <= 50 and reviews > 0 and rating <= 5 ORDER BY rating DESC;
--9--
SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews >= 10000;
--10--
SELECT * FROM analytics WHERE price BETWEEN 0.1 AND 1 ORDER BY reviews DESC LIMIT 10;
--11--
SELECT app_name, last_updated FROM analytics ORDER BY last_updated ASC LIMIT 1;
--12--
SELECT app_name, price FROM analytics ORDER BY price DESC LIMIT 1;
--13--
SELECT SUM(reviews) FROM analytics;
--14--
SELECT category, COUNT(*) AS app_count FROM analytics GROUP BY category HAVING COUNT(*) > 300;
--15--
SELECT app_name, reviews, min_installs, min_installs/reviews AS prop FROM analytics WHERE min_installs >= 100000;
