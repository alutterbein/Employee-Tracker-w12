// Seeds role table with json data

const sequelize = require("../connection");
const Role = require("../Models/role");

const rolesSeed = require("./rolesSeed.json");

const seedRoleData = async () => {
  await sequelize.sync({ force: true });

  const roles = await Role.bulkCreate(rolesSeed);

  process.exit(0);
};

seedRoleData();