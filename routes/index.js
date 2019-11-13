const express = require("express");
const router = express.Router();

router.get("/", (req, res) => {
  console.log("main route");
  res.render("home");
});

module.exports = router;
