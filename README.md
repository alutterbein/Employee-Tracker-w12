# Employee-Tracker-w12
week 12 homework: employee tracker
Liscence: ISC
## Description
Track your employees with this inquirer application!
## Table of Contents
* [Installation]
* [Usage]
* [Contributors]
* [Testing]
## Installation
  dependencies:  
   "express": "^4.17.1",
      "jshint": "^2.12.0",
      "mysql2": "^2.2.5",
      "inquirer": "^8.2.4",
      "sequelize": "^6.31.0"
## Usage:
first open a mysql shell terminal in the root direcetory and intiate the database with source db/schema.sql
"quit" the terminal, then run node commands in the terminal for each of the sql intializing files in the seed folder:
node ./seeds/deparment.js node ./seeds/employee.js node ./seeds/roles.js
finally you will be able to interact with inquirer by running node server.js

## Contributors
none
## Testing
none