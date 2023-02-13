const mysql = require('mysql');
require('dotenv').config();

const connection = mysql.createConnection({
  user: DB_USER,
  password: DB_PASSWORD,
  database: DB_NAME,
  host: 'localhost',
  port: 3000,
  });

module.exports = connection;