SELECT clients.name, COUNT(sales.idSales) AS total_sales, SUM(sales.total_price) AS total_amount
FROM Sales 
JOIN Clients ON sales.id_client = clients.idClients
WHERE sales.sale_date BETWEEN '2025-01-01' AND '2025-12-31' 
GROUP BY clients.name;
