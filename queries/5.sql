SELECT 
    ri.room_id,
    SUM(ri.nights_to_stay) AS total_nights,
    SUM(ri.nights_to_stay * r.fee) AS total_fee_collected
FROM 
    RoomInfo ri
JOIN 
    Room r ON ri.room_id = r.room_id
GROUP BY 
    ri.room_id;