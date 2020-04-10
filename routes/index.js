const express = require("express");
const router = express.Router();
const mysql = require("../utils/sql");
const bodyParser = require("body-parser");
const nodemailer = require("nodemailer");

router.get("/", (req, res) => {
  mysql.getConnection((err, connection) => {
    if (err) {
      return console.log(err.message);
    }

    console.log("main route");
    let query = `SELECT
    project.*,
    f.field_name AS field_name
    FROM
    tbl_projects project
    LEFT JOIN tbl_link_fields link ON
    project.projects_id = link.proj_id
    LEFT JOIN tbl_fields f ON
    link.fields_id = f.field_id
    order by RAND();`;

    mysql.query(query, (err, result) => {
      connection.release();
      res.render("home", { project: result });
    });
  });
});

router.get("/portfolio/:id", (req, res) => {
  console.log("portfolio page");
  console.log(req.params.id);

  query = `SELECT
  project.*,
  GROUP_CONCAT(t.tools_name) AS tool_name,
  GROUP_CONCAT(t.tools_icon) as tool_icon
FROM
  tbl_projects project
LEFT JOIN tbl_link_tools link ON
  project.projects_id = link.proj_id
LEFT JOIN tbl_tools t ON
  t.tools_id = link.tools_id
WHERE
  ID = ${req.params.id};`;
  mysql.query(query, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    }

    result[0].link = result[0].link.split(",").map(link => {
      return link;
    });
    result[0].tool_name = result[0].tool_name.split(",").map(tool => {
      return tool;
    });
    result[0].tool_icon = result[0].tool_icon.split(",").map(icon => {
      return icon;
    });

    console.log(result);
    res.json(result[0]);
  });
});

router.post("/send", (req, res) => {
  console.log(req.body);
  const output = `
    <p>On lekienlan.com</p>
    <h3>Contact Details</h3>
    <ul>
      <li>Name: ${req.body.name}</li>
      <li>Company: ${req.body.company}</li>
      <li>E-mail: ${req.body.email}</li>
    </ul>
    <h3>Message</h3>
    <p>${req.body.message}</p>
  `;

  // async..await is not allowed in global scope, must use a wrapper
  async function main() {
    // Generate test SMTP service account from ethereal.email

    // create reusable transporter object using the default SMTP transport
    let transporter = nodemailer.createTransport({
      host: "smtp.gmail.com",
      port: 587,
      secure: false, // true for 465, false for other ports
      auth: {
        user: "lekienlan98@gmail.com", // generated ethereal user
        pass: "Lan" // generated ethereal password
      },
      tls: {
        rejectUnauthorized: false
      }
    });

    // send mail with defined transport object
    let info = await transporter.sendMail({
      from: '"Nodemailer Contact" <lekienlan98@gmail.com>', // sender address
      to: "darrenle98@gmail.com", // list of receivers
      subject: "No Contact Request", // Subject line
      text: "Hello world?", // plain text body
      html: output // html body
    });

    console.log("Message sent: %s", info.messageId);
    // Message sent: <b658f8ca-6296-ccf4-8306-87d57a0b4321@example.com>

    // Preview only available when sending through an Ethereal account
    console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));

    res.render("submission", {
      layout: "submissionPage"
    });
  }
  // Preview URL: https://ethereal.email/message/WaQKMgKddxQDoou...
  main().catch(console.error);
});

module.exports = router;
