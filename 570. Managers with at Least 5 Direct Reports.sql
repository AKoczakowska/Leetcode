SELECT a.name
FROM employee a
INNER JOIN employee b ON a.id = b.managerId
GROUP BY b.managerId
HAVING count(*)>=5
