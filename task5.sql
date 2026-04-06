-- Task 5

SELECT 
    c.name,
    c.class,
    AVG(r.position) AS avg_position,
    COUNT(*) AS race_count,
    cl.country
FROM Results r
JOIN Cars c ON r.car = c.name
JOIN Classes cl ON c.class = cl.class
GROUP BY c.name, c.class, cl.country
HAVING AVG(r.position) < (
    SELECT AVG(r2.position)
    FROM Results r2
    JOIN Cars c2 ON r2.car = c2.name
    WHERE c2.class = c.class
);
