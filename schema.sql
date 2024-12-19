CREATE DATABASE crm;

USE crm;

CREATE TABLE Companies(
  company_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT
);

CREATE TABLE Customers(
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  rating INT,
  company_id INT,
  FOREIGN KEY (company_id) REFERENCES Companies(company_id)
);

CREATE TABLE Departments(
  department_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE Employees(
  employee_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

CREATE TABLE Products(
  product_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT
);

CREATE TABLE Sales(
  sale_id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT,
  employee_id INT,
  customer_id INT,
  quantity INT,
  sale_data DATE,
  FOREIGN KEY (product_id) REFERENCES Products(product_id),
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
)

CREATE TABLE EmployeeCustomer(
  employee_id INT,
  customer_id INT,
  PRIMARY KEY (employee_id, customer_id),
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
  FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)

CREATE TABLE EmployeeProduct(
  employee_id INT,
  product_id INT,
  PRIMARY KEY (employee_id, customer_id),
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
  FOREIGN KEY (product_id) REFERENCES Products(products_id)
)



