INSERT INTO Supplier (name, street, mail, reg_date, number, floor, door, city, phone_number, fax, NIF)
VALUES
  ('Proveedor A', 'Calle Ficticia 1', 'proveedorA@mail.com', '2025-03-16', '123456789', '2', '1', 'Barcelona', '123456789', '987654321', '12345678A'),
  ('Proveedor B', 'Avenida Inventada 22', 'proveedorB@mail.com', '2025-03-16', '987654321', '3', '3', 'Madrid', '987654321', '123456789', '87654321B'),
  ('Proveedor C', 'Calle Ejemplo 3', 'proveedorC@mail.com', '2025-03-16', '567890123', '4', '4', 'Valencia', '567890123', '123456789', '11223344C');

INSERT INTO Glasses (brand, left_side_graduation, right_side_graduation, frame_type, frame_color, lens_color, price, id_glasses_supplier)
VALUES
  ('Marca1', 1.5, 1.5, 'rimless', 'black', 'red', 120.00, 1),
  ('Marca2', 2.0, 2.0, 'plastic', 'blue', 'blue', 150.00, 2),
  ('Marca3', 1.75, 1.75, 'metallic', 'white', 'black', 180.00, 3),
  ('Marca4', 1.0, 1.0, 'rimless', 'red', 'black', 140.00, 1),
  ('Marca5', 2.5, 2.5, 'plastic', 'black', 'red', 160.00, 2),
  ('Marca6', 1.25, 1.25, 'metallic', 'blue', 'blue', 170.00, 3);

INSERT INTO Clients (name, phone_number, zip_code, mail, reg_date, referred_by)
VALUES
  ('Cliente 1', '123456789', '08001', 'cliente1@mail.com', '2025-03-16', NULL),
  ('Cliente 2', '987654321', '08002', 'cliente2@mail.com', '2025-03-16', 1),
  ('Cliente 3', '112233445', '08003', 'cliente3@mail.com', '2025-03-16', 2),
  ('Cliente 4', '223344556', '08004', 'cliente4@mail.com', '2025-03-16', NULL);

INSERT INTO Employees (name, mail, phone_number)
VALUES
  ('Empleado 1', 'empleado1@mail.com', '123456789'),
  ('Empleado 2', 'empleado2@mail.com', '987654321'),
  ('Empleado 3', 'empleado3@mail.com', '112233445');

INSERT INTO Sales (id_client, id_employee, id_glasses, sale_date, total_price)
VALUES
  (1, 1, 1, '2025-03-16', 120.00),
  (2, 2, 2, '2025-03-16', 150.00),
  (3, 3, 3, '2025-03-16', 180.00),
  (4, 1, 4, '2025-03-16', 140.00),
  (1, 2, 5, '2025-03-16', 160.00),
  (2, 3, 6, '2025-03-16', 170.00);

