INSERT INTO department (id, name)
VALUES (1, "Customer Service"),
       (2, "Placeholder"),
       (3, "Placeholder"),
       (4, "Placeholder"),
       (5, "Placeholder"),
       (6, "Placeholder"),
       (7, "Tech");

INSERT INTO role (id, title, salary, department_id)
VALUES (1, "Cashier", 12603.54, 1),
       (5, "Placeholder", 3234, 2),
       (6, "Manager", 500000, 2),
       (7, "Tech Wizard", 99999, 2);

INSERT INTO role (id, first_name, last_name, role_id, manager_id)
VALUES (1, "Justus", "Schoppmann", 2, 1),
       (2, "Kyle", "Schoppmann", 2, NULL),
       (3, "John", "Schoppmann", 2, NULL),
       (4, "Place", "holder", 3, 3),

       