use crm;

INSERT INTO Companies (name, description) VALUES
('Alpha Investments', 'A leading investment firm specializing in stocks and bonds'),
('Beta Financial Services', 'Offers a wide range of financial services including wealth management'),
('Gamma Capital', 'Focused on private equity and venture capital investments');


INSERT INTO Customers (first_name, last_name, rating, company_id) VALUES
('John', 'Doe', 5, 1),
('Jane', 'Smith', 4, 2),
('Alice', 'Johnson', 3, 3);

INSERT INTO Departments (name) VALUES
('Sales'),
('Marketing'),
('Finance');

INSERT INTO Employees(first_name, last_name, department_id) VALUES
('Robert', 'Brown', 1),
('Emily', 'Davis', 2),
('Michael', 'Wilson', 2);

INSERT INTO Products(name, description) VALUES
('Investment Plan A', 'Comprehensive investment plan for long-term growth'),
('Retirement Fund B', 'Retirement fund with a focus on stability and steady income'),
('Equity Package C', 'Diverse equity package for aggressive growth');

INSERT INTO Sales (product_id, employee_id, customer_id, quantity, sale_date) VALUES
(1,1,1,10, '2024-01-15'),
(2,1,2,5, '2024-01-20'),
(3,2,3,15, '2024-01-25');

INSERT INTO EmployeeCustomer (employee_id, customer_id) VALUES
(1,1),
(2,2),
(1,3);

INSERT INTO EmployeeProduct (employee_id, product_id) VALUES
(1,1),
(1,2),
(2,3);


