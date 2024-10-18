const express = require("express");
const { ethers } = require("ethers");

const app = express();
const PORT = process.env.PORT || 5000;

const provider = new ethers.providers.JsonRpcProvider(process.env.RPC_URL);

app.get("/", (req, res) => {
  res.send("Payroll streaming backend");
});

app.listen(PORT, () => {
  console.log(`Backend running on port ${PORT}`);
});
