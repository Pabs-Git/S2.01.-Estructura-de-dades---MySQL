SELECT SUM(op.quantity) AS total_begudes_vendudes
FROM Order_Product op
JOIN Orders o ON op.idOrder = o.idOrders
JOIN Clients c ON o.order_client = c.idClients
JOIN Localities l ON c.client_locality = l.idLocalities
JOIN Products p ON op.idProduct = p.idProducts
JOIN Category cat ON p.idCategory = cat.idCategory
WHERE cat.name = 'Bebidas'
AND l.name = 'Gracia';

