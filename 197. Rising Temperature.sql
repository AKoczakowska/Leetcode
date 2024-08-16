SELECT temp1.id 
FROM Weather temp1
JOIN Weather temp2 
ON temp1.recordDate = DATE_ADD(temp2.recordDate, INTERVAL 1 DAY)
WHERE temp1.temperature > temp2.temperature;
