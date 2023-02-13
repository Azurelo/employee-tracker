DROP DATABASE IF EXISTS employee_db;
CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL
);

CREATE TABLE roles (
  id INT PRIMARY KEY,
  title VARCHAR(30),
  salary DECIMAL(8,2),
  department_id INT,
  FOREIGN KEY (department_id)
  REFERENCES department(id)
  ON DELETE SET NULL
);

CREATE TABLE employee (
  id INT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT,
  manager_id INT,
  FOREIGN KEY (role_id) 
  REFERENCES roles(id)
  ON DELETE SET NULL,
  FOREIGN KEY (manager_id)
  REFERENCES employee(id)
  ON DELETE SET NULL
);

INSERT INTO department (name)
VALUES ("Finance"),
       ("Legal"),
       ("Management"),
       ("Sales"),
       ("Engineering");

INSERT INTO roles (id, title, salary, department_id)
VALUES (1, "Manager", 500000.00, 3),
       (2, "Cashier", 12603.54, 4),
       (3, "Lawyer", 92345.65, 2),
       (4, "Accountant", 1200.65, 1),
       (5, "Tech Wizard", 99999.99, 5);

INSERT INTO employee (id, first_name, last_name, role_id, manager_id)
VALUES (1, "Justus", "Schoppmann", 1, 1),
       (2, "Kyle", "Schoppmann", 2, NULL),
       (3, "John", "Schoppmann", 4, NULL),
       (4, "Justin", "Wilson", 3, 3);