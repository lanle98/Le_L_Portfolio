const express = require("express");
const router = express.Router();

router.get("/", (req, res) => {
  console.log("main route");
  res.render("home");
});

router.post("/about", (req, res) => {
  console.log("about page");
  res.render("home");
});

router.get("/portfolio", (req, res) => {
  console.log("portfolio page");
  res.render("portfolio");
});

module.exports = router;
