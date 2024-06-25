// Seeds department table with json data

const sequelize = require("../connection");
const Department = require("../Models/department");

const departmentsData = require("./departmentSeed.json");

const seedDepartmentData = async () => {
  await sequelize.sync({ force: true });

  const departments = await Department.bulkCreate(departmentsData);

  process.exit(0);
};

seedDepartmentData();