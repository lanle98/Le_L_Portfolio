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
