SELECT e.first_name, e.last_name, COUNT(o.idOrders) AS total_comandes
FROM Orders o
JOIN Employee e ON o.order_employee = e.idEmployee
WHERE e.first_name = 'Pedro' AND e.last_name = 'Sanchez' 
GROUP BY e.first_name, e.last_name;