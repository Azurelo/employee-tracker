const mysql = require('mysql2');
require('dotenv').config();

const connection = mysql.createConnection({
  user: "root",
  password: "LordCheese12!",
  database: "employee_db",
  host: 'localhost',
  port: 3000,
  });

module.exports = connection;