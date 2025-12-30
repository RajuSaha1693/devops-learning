const express = require("express");
const mongoose = require("mongoose");

const app = express();

app.get("/health", (req, res) => {
  res.status(200).send("API OK");
});

app.get("/api", (req, res) => {
  console.log("Handled by backend instance:", process.pid);
  res.json({ message: "Backend API" });
});

//IIFE
(async () => {
  try {
    await mongoose.connect("mongodb://mongo:27017/devops");
    console.log("Mongo is connected now!");
  } catch (error) {
    console.log("Unable to connect to mongodb server");
  }
})();

app.listen(3000, () =>
  console.log("Backend application started successfully !")
);
