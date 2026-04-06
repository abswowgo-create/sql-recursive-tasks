-- Task 7

WITH car_stats AS (
    SELECT c.name, c.class, AVG(r.position) AS avg_pos
    FROM Cars c
    JOIN Results r ON c.name = r.car
    GROUP BY c.name, c.class
)
SELECT *
FROM car_stats;
