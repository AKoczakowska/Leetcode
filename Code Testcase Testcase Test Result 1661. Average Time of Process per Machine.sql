SELECT 
    machine_id,
    ROUND(SUM(IF(activity_type = 'end', timestamp,-timestamp)) / (COUNT(machine_id) / 2), 3) AS processing_time 
FROM activity
GROUP BY machine_id
