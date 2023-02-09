drop database if exists employee_db;
create database employee_db;

use employee_db;

CREATE TABLE department(
    id INT NOT NULL PRIMARY,
    name VARCHAR(30)
)
CREATE TABLE role (
  id INT NOT NULL,
  title VARCHAR(30),
  salary DECIMAL,
  department_id INT,
  FOREIGN KEY (department_id)
  REFERENCES department(id)
  ON DELETE SET NULL
);

CREATE TABLE employee (
  id INT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INT NOT NULL,
  REFERENCES role(id)
  ON DELETE SET NULL
  manager_id INT NOT NULL
);