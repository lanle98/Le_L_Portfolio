const express = require("express");
const path = require("path");
const hbs = require("hbs");
const bodyParser = require("body-parser");
const nodemailer = require("nodemailer");

//set up port
const port = process.env.PORT || 4000;

const app = express();

app.use(express.static(path.join(__dirname, "public")));
app.set("view engine", "hbs");
app.set("views", path.join(__dirname, "views"));

//body parser middleware

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }));

// parse application/json
app.use(bodyParser.json());

app.use("/", require("./routes/index"));

app.post("/send", (req, res) => {
  console.log(req.body);
  const output = `
    <p>You have a new contact request</p>
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
      host: "smtp.mailgun.org",
      port: 587,
      secure: false, // true for 465, false for other ports
      auth: {
        user: "postmaster@sandboxc3eb121021e14f72a54a61daabb1b44b.mailgun.org", // generated ethereal user
        pass: "640617132b02b93ba439e175d0a62f1b-5645b1f9-6c64a4c0" // generated ethereal password
      }
    });

    // send mail with defined transport object
    let info = await transporter.sendMail({
      from:
        '"Nodemailer Contact" <postmaster@sandbox4201e58a5b614361a433036cc7a4dba0.mailgun.org>', // sender address
      to: "darrenle98@gmail.com", // list of receivers
      subject: "No Contact Request", // Subject line
      text: "Hello world?", // plain text body
      html: output // html body
    });

    console.log("Message sent: %s", info.messageId);
    // Message sent: <b658f8ca-6296-ccf4-8306-87d57a0b4321@example.com>

    // Preview only available when sending through an Ethereal account
    console.log("Preview URL: %s", nodemailer.getTestMessageUrl(info));
  }
  // Preview URL: https://ethereal.email/message/WaQKMgKddxQDoou...
  main().catch(console.error);

  res.render("submission", {
    message: "Thank you for contacting me",
    layout: "submissionPage"
  });
});

app.use((req, res, next) => {
  let err = new Error("Not Found");
  err.status = 404;
  err.customMessage = "Sorry! Page Not Found";

  next(err);
});

app.use((err, req, res, next) => {
  res.render("error", {
    data: err,
    layout: "errorPage"
  });
});

app.listen(port, () => {
  console.log(`app is running on ${port}`);
});
