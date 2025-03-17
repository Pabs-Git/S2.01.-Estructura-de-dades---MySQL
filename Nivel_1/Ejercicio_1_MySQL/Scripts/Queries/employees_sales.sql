SELECT employees.name, glasses.brand, COUNT(sales.idSales) AS total_sales, sales.sale_date
FROM Sales 
JOIN Employees ON sales.id_employee = employees.idEmployees
JOIN Glasses ON sales.id_glasses = glasses.idGlasses
WHERE sales.sale_date BETWEEN '2025-01-01' AND '2025-12-31' 
GROUP BY employees.name, glasses.brand;
