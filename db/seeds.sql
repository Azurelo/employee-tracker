INSERT INTO department (name)
VALUES ("Finance"),
       ("Legal"),
       ("Management"),
       ("Sales"),
       ("Engineering");

INSERT INTO role (title, salary, department_id)
VALUES ("Cashier", 12603.54, 4),
       ("Lawyer", 92345.65, 2),
       ("Manager", 500000.00, 3),
       ("Tech Wizard", 99999.99, 5);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Justus", "Schoppmann", 2, 1),
       ("Kyle", "Schoppmann", 2, NULL),
       ("John", "Schoppmann", 2, NULL),
       ("Justin", "Wilson", 3, 3),

       