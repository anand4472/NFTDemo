async function main() {
  // Grab the contract factory 
  const MyNFT = await ethers.getContractFactory("myNFT");

  // Start deployment, returning a promise that resolves to a contract object
  const myNFT = await MyNFT.deploy(); // Instance of the contract 
  console.log("Contract deployed to address:", myNFT.address);
}

main()
 .then(() => process.exit(0))
 .catch(error => {
   console.error(error);
   process.exit(1);
 });

 
 //0xd1450D7718a73C22C8fB72D8363422734c3b801B