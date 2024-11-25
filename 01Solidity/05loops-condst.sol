// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ConditionalAndLoopExample {

    uint256 public balance = 100;
    uint256 public count = 0;

    // Example of if-else conditionals
    function checkBalance() public view returns (string memory) {
        if (balance > 100) {
            return "Balance is greater than 100";
        } else if (balance > 50) {
            return "Balance is between 51 and 100";
        } else {
            return "Balance is 50 or less";
        }
    }

    // Example of using require for condition validation
    function withdraw(uint256 amount) public {
        require(amount <= balance, "Insufficient balance");  // Checks if withdrawal amount is <= balance
        balance -= amount;  // Decreases balance by withdrawal amount
    }

    // Example of a simple for loop
    function incrementCount(uint256 times) public {
        for (uint256 i = 0; i < times; i++) {  // Loop that runs 'times' number of iterations
            count += 1;  // Increment count by 1 in each iteration
        }
    }

    // Example of while loop
    function countdown(uint256 start) pure public {
        while (start > 0) {  // Loop that continues until 'start' reaches 0
            start -= 1;  // Decrease start by 1 in each iteration
        }
    }

    // Example of do-while loop
    function doWhileExample() public {
        do {
            count += 1;  // Increment count at least once
        } while (count < 10);  // Repeat until count reaches 10
    }
}