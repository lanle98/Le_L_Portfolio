const express = require("express");
const router = express.Router();
const mysql = require("../utils/sql");

router.get("/", (req, res) => {
  console.log("main route");
  query = "select * from tbl_projects";
  mysql.query(query, (err, result) => {
    res.render("home", { project: result });
  });
});

router.get("/:field", (req, res) => {
  console.log("filter");
  query = `SELECT
  project.*,
  f.field_name AS field_name
FROM
  tbl_projects project
LEFT JOIN tbl_link_fields link ON
  project.projects_id = link.proj_id
LEFT JOIN tbl_fields f ON
  link.fields_id = f.field_id
  where field_name = '${req.params.field}';`;

  mysql.query(query, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }

    console.log(result);
    res.json({ project: result });
  });
});

router.get("/portfolio/:id", (req, res) => {
  console.log("portfolio page");
  console.log(req.params.id);

  query = `select * from tbl_projects where ID=${req.params.id}`;
  mysql.query(query, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }

    console.log(result);
    res.json(result[0]);
  });
});

module.exports = router;
