SELECT visits.customer_id, COUNT(Visits.visit_id) AS count_no_trans
FROM visits 
LEFT JOIN Transactions ON visits.visit_id = transactions.visit_id 
WHERE transactions.transaction_id IS NULL
GROUP BY visits.customer_id
