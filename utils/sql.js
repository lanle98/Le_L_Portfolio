const config = require("../config");
const mysql = require("mysql");

const connect = mysql.createPool({
  host: config.host,
  port: config.port,
  user: config.uname,
  password: config.pword,
  database: config.database,
  connectionLimit: 20,
  queueLimit: 100,
  waitForConnections: true
});

module.exports = connect;
