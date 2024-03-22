-- need to figure out how to link queries to inquerer reponses

SELECT * FROM department,
SELECT * FROM role,
SELECT * FROM employee,
DELETE FROM department WHERE id = ?;
DELETE FROM role WHERE id = ?;
DELETE FROM employee WHERE id = ?;

-- need to figure out if these are actually right
INSERT INTO department (department_name)
INSERT INTO role (role_title, salary, department.department)
INSERT INTO employee (first_name, last_name, role.role, manager_id.manager)
UPDATE employee SET employee.id = role.id WHERE employee.name = role.role_title