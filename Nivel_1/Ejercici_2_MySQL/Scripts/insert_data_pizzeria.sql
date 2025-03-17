INSERT INTO Province (name) VALUES 
('Barcelona'),
('Madrid'),
('Valencia'),
('Sevilla'),
('Bilbao');

INSERT INTO Localities (name, id_province) VALUES
('Gracia', 1),
('Sants', 1),
('Centro', 2),
('Ruzafa', 3),
('Abando', 4);

INSERT INTO Clients (surname, name, address, zip_code, client_locality, phone_number) VALUES
('Garcia', 'Carlos', 'Carrer Gran de Gracia, 123', 08012, 1, '612345678'),
('Lopez', 'Maria', 'Carrer de Sants, 456', 08014, 2, '612987654'),
('Perez', 'Juan', 'Avenida de la Paz, 789', 28001, 3, '613456789'),
('Martinez', 'Laura', 'Carrer de Ruzafa, 321', 46001, 4, '614567890'),
('Fernandez', 'Luis', 'Carrer de Abando, 654', 48001, 5, '615678901');

INSERT INTO Store (address, zip_code, store_locality) VALUES
('Carrer de Pau Claris, 12', '08010', 1),
('Carrer de Princesa, 32', '28013', 2),
('Avenida de la Constitución, 45', '46010', 3),
('Carrer de Gran Vía, 67', '41001', 4),
('Carrer de Urquijo, 11', '48010', 5);

INSERT INTO Employee (first_name, last_name, NIF, phone_number, position, employee_store) VALUES
('Pedro', 'Sanchez', '12345678A', '610123456', 'Cook', 1),
('Ana', 'Ruiz', '87654321B', '610654321', 'Delivery', 1),
('Jorge', 'Gomez', '23456789C', '611234567', 'Cook', 2),
('Eva', 'Moreno', '98765432D', '611765432', 'Delivery', 2),
('David', 'Hernandez', '34567890E', '612345678', 'Cook', 3);

INSERT INTO Orders (orde_date, delivery_type, total_price, order_client, order_store, order_employee, delivery_employee) VALUES
('2025-02-17 13:45:00', 'home_delivery', 24.50, 1, 1, 1, 2),
('2020-03-17 14:30:00', 'pickup', 15.00, 2, 2, 3, NULL),
('2023-03-19 15:00:00', 'home_delivery', 18.75, 3, 3, 4, 5),
('2017-03-17 16:00:00', 'pickup', 22.30, 4, 4, 1, NULL),
('2025-03-18 16:30:00', 'home_delivery', 20.40, 5, 5, 2, 3),
('2025-03-17 18:30:00', 'home_delivery', 5.40, 1, 1, 1, 2); 

INSERT INTO Category (name) VALUES
('Pizzas'),
('Hamburguesas'),
('Bebidas');

INSERT INTO Products (name, description, image, price, idCategory, type) VALUES
('Pizza Margherita', 'Pizza con tomate, mozzarella y albahaca', 'pizza_margherita.jpg', 8.50, 1, 'Pizza'),
('Pizza Pepperoni', 'Pizza con pepperoni y mozzarella', 'pizza_pepperoni.jpg', 9.00, 1, 'Pizza'),
('Hamburguesa Clásica', 'Hamburguesa con carne, lechuga y tomate', 'hamburguesa_clasica.jpg', 6.50, 2, 'Hamburguesa'),
('Hamburguesa BBQ', 'Hamburguesa con carne, salsa barbacoa y cebolla', 'hamburguesa_bbq.jpg', 7.00, 2, 'Hamburguesa'),
('Coca-Cola', 'Refresco de cola', 'coca_cola.jpg', 1.80, 3, 'Beguda');

INSERT INTO Order_Product (idOrder, idProduct, quantity) VALUES
(1, 1, 2),
(1, 3, 1),
(2, 2, 1),
(3, 4, 2),
(4, 5, 1),
(6, 5, 3); 

