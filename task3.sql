-- Task 3

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
ORDER BY avg_position ASC, c.name ASC
LIMIT 1;
