const hre = require("hardhat");

async function main() {
  const TrustCraft = await hre.ethers.getContractFactory("TrustCraft");
  const trustCraft = await TrustCraft.deploy();
  await trustCraft.waitForDeployment();
  console.log("✅ TrustCraft deployed to:", await trustCraft.getAddress());
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
