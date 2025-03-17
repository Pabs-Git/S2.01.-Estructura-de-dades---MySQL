CREATE DATABASE IF NOT EXISTS PizzeriaDB;
USE PizzeriaDB;

CREATE TABLE IF NOT EXISTS Province (
  idProvince INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45) NOT NULL
); 

CREATE TABLE IF NOT EXISTS Localities (
  idLocalities INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45) NOT NULL,
  id_province INT NOT NULL,
  CONSTRAINT localities_province FOREIGN KEY (id_province) REFERENCES Province(idProvince)
);

CREATE TABLE IF NOT EXISTS Clients (
  idClients INT AUTO_INCREMENT PRIMARY KEY,
  surname VARCHAR(45) NOT NULL,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(100) NOT NULL,
  zip_code INT NOT NULL,
  client_locality INT NOT NULL,
  phone_number VARCHAR(45) NOT NULL,
  CONSTRAINT client_locality FOREIGN KEY (client_locality) REFERENCES Localities(idLocalities),
	UNIQUE (surname),
	UNIQUE (phone_number)
);

CREATE TABLE IF NOT EXISTS Store (
  idStore INT AUTO_INCREMENT PRIMARY KEY,
  address VARCHAR(100) NOT NULL,
  zip_code VARCHAR(45) NOT NULL,
  store_locality INT NOT NULL,
  CONSTRAINT store_locality FOREIGN KEY (store_locality) REFERENCES Localities(idLocalities)
);

CREATE TABLE IF NOT EXISTS Employee (
  idEmployee INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  NIF VARCHAR(45) NOT NULL UNIQUE,
  phone_number VARCHAR(45) NOT NULL,
  position ENUM('Cook', 'Delivery') NOT NULL,
  employee_store INT NOT NULL,
  CONSTRAINT employee_store FOREIGN KEY (employee_store) REFERENCES Store(idStore)
);

CREATE TABLE IF NOT EXISTS Orders (
  idOrders INT AUTO_INCREMENT PRIMARY KEY,
  orde_date DATETIME NOT NULL,
  delivery_type ENUM('home_delivery', 'pickup') NOT NULL,
  total_price DECIMAL(10,2) NOT NULL,
  order_client INT NOT NULL,
  order_store INT NOT NULL,
  order_employee INT NOT NULL,
  delivery_employee INT NULL,
  delivery_datetime DATETIME NULL,
  CONSTRAINT order_client FOREIGN KEY (order_client) REFERENCES Clients(idClients),
  CONSTRAINT order_store FOREIGN KEY (order_store) REFERENCES Store(idStore),
  CONSTRAINT order_employee FOREIGN KEY (order_employee) REFERENCES Employee(idEmployee),
  CONSTRAINT delivery_employee FOREIGN KEY (delivery_employee) REFERENCES Employee(idEmployee)
) ;

CREATE TABLE IF NOT EXISTS Category (
  idCategory INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Products (
  idProducts INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45) NOT NULL,
  description VARCHAR(300) NOT NULL,
  image VARCHAR(1000) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  idCategory INT NOT NULL,
  type ENUM('Pizza', 'Hamburguesa', 'Beguda') NOT NULL,
  CONSTRAINT products_category FOREIGN KEY (idCategory) REFERENCES Category(idCategory)
);

CREATE TABLE IF NOT EXISTS Order_Product (
  idOrder INT NOT NULL,
  idProduct INT NOT NULL,
  quantity INT NOT NULL,
  PRIMARY KEY (idOrder, idProduct),
  CONSTRAINT rder_product_order FOREIGN KEY (idOrder) REFERENCES Orders(idOrders),
  CONSTRAINT order_product_product FOREIGN KEY (idProduct) REFERENCES Products(idProducts)
);

