
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SpendWise {

    // Expense categories
    enum Category {
        Food,
        Transport,
        Education,
        Shopping,
        Other
    }

    // Structure of an expense
    struct Expense {
        uint256 amountPaisa;
        Category category;
        string description;
        uint256 timestamp;
    }

    // Store expenses separately for each wallet
    mapping(address => Expense[]) private expenses;

    // Store total spending for each wallet
    mapping(address => uint256) private totalSpentPaisa;


    // Function 1: Add a new expense
    function addExpense(
        uint256 amountPaisa,
        Category category,
        string calldata description
    ) public {

        require(amountPaisa > 0, "Amount must be greater than zero");

        require(
            bytes(description).length > 0,
            "Description cannot be empty"
        );

        expenses[msg.sender].push(
            Expense({
                amountPaisa: amountPaisa,
                category: category,
                description: description,
                timestamp: block.timestamp
            })
        );

        totalSpentPaisa[msg.sender] += amountPaisa;
    }


    // Function 2: Retrieve an individual expense
    function getExpense(uint256 index)
        public
        view
        returns (
            uint256,
            Category,
            string memory,
            uint256
        )
    {
        require(
            index < expenses[msg.sender].length,
            "Expense does not exist"
        );

        Expense memory expense = expenses[msg.sender][index];

        return (
            expense.amountPaisa,
            expense.category,
            expense.description,
            expense.timestamp
        );
    }


    // Function 3: Get the total number of expenses
    function getMyExpenseCount() public view returns (uint256) {
        return expenses[msg.sender].length;
    }


    // Function 4: Get total spending
    function getMyTotalExpenses() public view returns (uint256) {
        return totalSpentPaisa[msg.sender];
    }

}
