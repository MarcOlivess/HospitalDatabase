SELECT 
    e.name AS nurse_name,
    e.phone_num AS nurse_phone,
    o.order_id,
    o.status AS order_status
FROM 
    Employees e
JOIN 
    Nurses n ON e.employee_id = n.employee_id
JOIN 
    Orders o ON n.employee_id = o.nurse_id;