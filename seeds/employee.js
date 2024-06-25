// Seeds employee table with json data

const sequelize = require("../connection");
const Employee = require("../Models/employee");

const employeeSeed = require("./employeeSeed.json");

const seedEmployeeData = async () => {
  await sequelize.sync({ force: true });

  const employee = await Employee.bulkCreate(employeeSeed);

  process.exit(0);
};

seedEmployeeData();