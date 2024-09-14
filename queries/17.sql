-- Average Stay Duration in Each Room
SELECT 
    r.room_id,
    r.capacity,
    AVG(ri.nights_to_stay) AS average_nights_to_stay
FROM 
    Room r
JOIN 
    RoomInfo ri ON r.room_id = ri.room_id
GROUP BY 
    r.room_id, r.capacity;