// Seeds employee table with json data

const sequelize = require("../connection");
const Employee = require("../Models/employee");

const employeesSeed = require("./employeesSeed.json");

const seedEmployeeData = async () => {
  await sequelize.sync({ force: true });

  const employees = await Employee.bulkCreate(employeesSeed);

  process.exit(0);
};

seedEmployeeData();