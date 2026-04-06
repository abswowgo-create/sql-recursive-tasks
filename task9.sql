-- Task 9

SELECT 
    c.ID_customer,
    c.name,
    COUNT(*) AS total_bookings,
    SUM(r.price * DATEDIFF(b.check_out_date, b.check_in_date)) AS total_spent,
    COUNT(DISTINCT h.ID_hotel) AS unique_hotels
FROM Customer c
JOIN Booking b ON c.ID_customer = b.ID_customer
JOIN Room r ON b.ID_room = r.ID_room
JOIN Hotel h ON r.ID_hotel = h.ID_hotel
GROUP BY c.ID_customer
HAVING total_spent > 500;
