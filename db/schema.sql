DROP DATABASE IF EXISTS assets_db;
CREATE DATABASE assets_db;

USE assets_db;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  department_name VARCHAR(100) NOT NULL
);

CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    role_title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id)
    REFERENCES department(id)
    ON DELETE SET NULL
);

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id)
    REFERENCES role(id) 
    ON DELETE SET NULL,
    FOREIGN KEY (employee_id)
    REFERENCES employee(id)
);
-- why is role blue on line 28
-- need to figure out how to make employee table self referencing to manager, it's referncing another employee, 
-- how do I do that make another table?  
