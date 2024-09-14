SELECT 
    name,
    employee_id
FROM 
    Employees
WHERE 
    employee_id IN (
        SELECT 
            physician_id
        FROM 
            Instructions
        GROUP BY 
            physician_id
        HAVING 
            COUNT(*) = (
                SELECT 
                    MAX(instruction_count)
                FROM (
                    SELECT 
                        COUNT(*) AS instruction_count
                    FROM 
                        Instructions
                    GROUP BY 
                        physician_id
                ) AS instruction_counts
            )
    );