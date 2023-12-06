To run the Eredità inheritance planning project locally, follow these steps:

1. Install dependencies like Node.js, Truffle (npm install -g truffle), and the Ganache application from https://trufflesuite.com/ganache/
Open Ganache and click the settings icon to configure the Network ID to 127.0.0.1 and Port to 7545 before saving and restarting

2. Clone the Eredità repo:
git clone https://github.com/Eredità/inheritance-planning.git

3. Please see Screenshot (172) in order to organize all files into appropriate folders (all .sol files go to "contracts", .js.js deployment files go to "migrations", and .json files go to "build/contracts" )

4. Open your Windows command prompt (cmd) and change your directory to where you downloaded the files.

5. Install this node dependency:
npm install truffle-hdwallet-provider dotenv

6. Compile the smart contracts:
truffle compile

7. Deploy the contracts to the local network:
truffle migrate --network development

8. Interact with the deployed contracts through the Truffle console:
truffle console

9. Call functions on the deployed contracts to execute inheritance logic

This leverages the Truffle config pointing to the local Ganache node to compile, deploy and interact with the inheritance planning contracts seamlessly all locally for development and testing.