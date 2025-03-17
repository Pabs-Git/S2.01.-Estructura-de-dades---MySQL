CREATE DATABASE IF NOT EXISTS optical_store;
USE optical_store;

CREATE TABLE Supplier (
  idSupplier INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  street VARCHAR(100) NOT NULL,
  mail VARCHAR(300) NOT NULL UNIQUE,
  reg_date DATE NOT NULL,
  number VARCHAR(45) NOT NULL,
  floor VARCHAR(45) NOT NULL,
  door VARCHAR(45) NOT NULL,
  city VARCHAR(45) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  fax VARCHAR(45) NOT NULL,
  NIF VARCHAR(45) NOT NULL UNIQUE
);

CREATE TABLE Glasses (
  idGlasses INT AUTO_INCREMENT PRIMARY KEY,
  brand VARCHAR(45) NOT NULL,
  left_side_graduation DECIMAL(4,2) NOT NULL,
  right_side_graduation DECIMAL(4,2) NOT NULL,
  frame_type ENUM('rimless', 'plastic', 'metallic') NOT NULL,
  frame_color ENUM('white', 'black', 'red', 'blue') NOT NULL,
  lens_color ENUM('black', 'red', 'blue') NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  id_glasses_supplier INT NOT NULL,
  CONSTRAINT glasses_supplier FOREIGN KEY (id_glasses_supplier) REFERENCES Supplier(idSupplier)
);

CREATE TABLE Clients (
  idClients INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45) NOT NULL,
  phone_number VARCHAR(45) NOT NULL,
  zip_code VARCHAR(45) NOT NULL,
  mail VARCHAR(300) NOT NULL UNIQUE,
  reg_date DATE NOT NULL,
  referred_by INT NULL,
  CONSTRAINT referred_by FOREIGN KEY (referred_by) REFERENCES Clients(idClients)
);

CREATE TABLE Employees (
  idEmployees INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(45) NOT NULL,
  mail VARCHAR(45) NOT NULL UNIQUE,
  phone_number VARCHAR(45) NOT NULL UNIQUE
);

CREATE TABLE Sales (
  idSales INT AUTO_INCREMENT PRIMARY KEY,
  id_client INT NOT NULL,
  id_employee INT NOT NULL,
  id_glasses INT NOT NULL,
  sale_date DATE NOT NULL,
  total_price DECIMAL(10,2) NOT NULL,
  CONSTRAINT sales_client FOREIGN KEY (id_client) REFERENCES Clients(idClients),
  CONSTRAINT sales_employee FOREIGN KEY (id_employee) REFERENCES Employees(idEmployees),
  CONSTRAINT sales_glasses FOREIGN KEY (id_glasses) REFERENCES Glasses(idGlasses)
);
