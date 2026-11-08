# SpendWise: Blockchain-Based Expense Tracker

## 1. Project Overview

SpendWise is a blockchain-based expense tracker developed using Solidity and Ethereum. It allows users to record and manage their daily expenses through a decentralized application (DApp).

The application uses MetaMask to connect users' wallets and stores expense records on the Ethereum Sepolia test network. Users can view their total spending, number of expenses, expense categories and transaction history.

All expense records are associated with the wallet address that created them.

## 2. Features

- **MetaMask Integration:** Connect an Ethereum wallet to the application.
- **Add Expenses:** Record expenses by entering an amount, category and description.
- **Expense Summary:** View total spending and the number of recorded expenses.
- **Expense History:** View previously recorded expenses.
- **Category Breakdown:** Organize expenses into Food, Transport, Education, Shopping and Other.
- **Category Filter:** Filter expense history by category.
- **Blockchain Storage:** Store expense records on the Sepolia test network.
- **Transaction Tracking:** View transaction confirmation through Sepolia Etherscan.

## 3. Technologies Used

- **Solidity:** Smart contract development.
- **Remix IDE:** Smart contract compilation and deployment.
- **Ethereum Sepolia:** Blockchain test network.
- **MetaMask:** Wallet connection and transaction approval.
- **HTML:** Frontend structure.
- **CSS:** Frontend styling.
- **JavaScript:** Application functionality and blockchain interaction.
- **Ethers.js:** Communication between the frontend and smart contract.

## 4. Smart Contract Functions

The SpendWise smart contract contains four main functions:

| Function | Description |
|---|---|
| `addExpense()` | Records a new expense on the blockchain. |
| `getExpense()` | Retrieves an individual expense using its index. |
| `getMyExpenseCount()` | Returns the total number of expenses recorded by the connected wallet. |
| `getMyTotalExpenses()` | Returns the total spending of the connected wallet. |

Expense amounts are stored in paisa to maintain accuracy when handling decimal PKR values.

## 5. Expense Categories

The application supports five expense categories:

1. Food
2. Transport
3. Education
4. Shopping
5. Other

## 6. Network and Deployment

- **Blockchain Network:** Ethereum Sepolia Testnet
- **Smart Contract Name:** SpendWise
- **Smart Contract Address:** PASTE_YOUR_DEPLOYED_CONTRACT_ADDRESS_HERE
- **Blockchain Explorer:** https://sepolia.etherscan.io/

## 7. How to Run the Project

1. Download or clone the project repository.
2. Open the project folder in Visual Studio Code.
3. Make sure MetaMask is installed in your browser.
4. Select the Sepolia test network in MetaMask.
5. Open `index.html` using VS Code Live Server.
6. Click Connect Wallet and approve the connection.
7. Enter an expense amount, select a category and provide a description.
8. Click Add Expense and confirm the transaction through MetaMask.
9. View the updated expense summary and transaction history.

**Note:** The application requires Sepolia test ETH to submit expense transactions. It does not use real money.

## 8. Project Structure

```text
Assignment_2/
│
├── SmartContract.sol
├── index.html
├── style.css
├── README.md
│
└── screenshots/
    ├── deployment.png
    ├── wallet-connection.png
    └── transaction.png
```

## 9. Screenshots

### Smart Contract Deployment
![Smart Contract Deployment](screenshots/deployment.png)

### MetaMask Wallet Connection
![Wallet Connection](screenshots/wallet-connection.png)

### Successful Expense Transaction
![Expense Transaction](screenshots/transaction.png)

## 10. Disclaimer

SpendWise is an academic project developed for learning and demonstrating blockchain technology. It operates on the Ethereum Sepolia test network and uses test ETH. It is not intended for real financial transactions or banking purposes.