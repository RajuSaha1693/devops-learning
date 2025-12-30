const express = require("express");
const mongoose = require("mongoose");

const app = express();

app.get("/health", (req, res) => {
  res.status(200).send("Node app with mongoose is healthy.");
});

mongoose
  .connect("mongodb://mongo:27017/devops")
  .then(() => console.log("Mongo DB is connected"))
  .catch((err) => console.log("Unable to start", err.message));

app.get("/", (req, res) => {
  res.send("Node+Mongoose");
});

app.listen(3000, () => console.log("Node+Mongoose App is runnnig"));
