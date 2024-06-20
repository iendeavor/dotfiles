const process = require("process");
const path = require("path");
const fs = require("fs");

const packageJsonPath = path.resolve(process.cwd(), "package.json");
if (fs.existsSync(packageJsonPath) === false) exitEarly();

const packageJson = JSON.parse(fs.readFileSync(packageJsonPath));
if (packageJson.engines === undefined) exitEarly();
if (packageJson.engines.node === undefined) exitEarly();

console.log(packageJson.engines.node);

function exitEarly() {
  console.log("--lts");
  process.exit(0);
}
