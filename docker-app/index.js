const express = require("express");
const fs = require("fs");
const path = require("path");

const app = express();
const port = 8080;
const logDir = "/usr/src/app/logs"; // IMPORTANT: This is the log directory INSIDE the container
const logFile = path.join(logDir, "app.log");

// Ensure the log directory exists (if not created by the volume setup)
if (!fs.existsSync(logDir)) {
  fs.mkdirSync(logDir, { recursive: true });
  console.log(`Created log directory: ${logDir}`);
}

// Simple logging function
function writeLog(message) {
  const timestamp = new Date().toISOString();
  const logEntry = `${timestamp} - ${message}\n`;
  // Use 'appendFileSync' to write the log entry
  fs.appendFileSync(logFile, logEntry);
  console.log(`LOGGED: ${message}`);
}

app.get("/", (req, res) => {
  const logMessage = `Request received from IP: ${req.ip}`;
  writeLog(logMessage);
  res.send(
    `Hello Raju! Your app is running and logged this request to the volume-mounted folder. Check your logs/app.log file!`
  );
});

app.get("/logs", (req, res) => {
  try {
    const logs = fs.readFileSync(logFile, "utf8");
    res.type("text/plain").send(`--- Log Content ---\n${logs}`);
  } catch (error) {
    res.status(500).send(`Could not read log file: ${error.message}`);
  }
});

app.listen(port, () => {
  console.log(`Server running on port ${port}. Log path: ${logFile}`);
  writeLog(`Application starting up.`);
});
