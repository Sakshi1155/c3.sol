Marketing System Smart Contract
This Solidity smart contract uses three essential Solidity features—require, assert, and revert—to illustrate a marketing system. Each function demonstrates different use cases for these features in handling error management and contract logic control.

Contract Overview
The MarketingSystem contract includes two public variables representing the budget and expected reach of a marketing campaign.

State Variables
uint public budget = 95000; - This variable holds the budget for the marketing campaign in dollars.
uint public reach = 33000; - This variable holds the expected reach of the marketing campaign in people.
Functions
requireEX(uint newBudget)
This function demonstrates the use of the require statement.

Conditions:

uint newBudget: The new budget for the marketing campaign.
The require statement ensures that the provided newBudget is not zero. If newBudget is zero, the error message "Budget cannot be zero." will be thrown.
If newBudget is non-zero, it updates the budget variable with the provided newBudget.
assertEX()
Returns:

uint: The total impact calculated by adding budget and reach.
string memory: A message indicating the success or need for improvement of the marketing campaign.
Logic:

Adds the budget and reach to calculate the total impact.
Uses assert to ensure that the total impact is non-negative.
Returns a success message if the total impact is 50,000 or greater.
Returns an improvement message if the total impact is less than 50,000.
revertEX(uint256 newReach)
This function demonstrates the use of the revert statement.

Conditions:

uint256 newReach: The new expected reach of the marketing campaign.
Reverts with different messages based on the value of newReach:
"Campaign reach is too low." if newReach is less than or equal to 10,000.
"Campaign reach is below average." if newReach is greater than 10,000 and less than or equal to 20,000.
"Campaign reach is average." if newReach is greater than 20,000 and less than or equal to 40,000.
"Campaign reach is above average." if newReach is greater than 40,000 and less than or equal to 60,000.
"Campaign reach is excellent." if newReach is greater than 60,000.
Usage
To use this contract, deploy it to an Ethereum-compatible blockchain. You can then interact with the contract's functions to observe how require, assert, and revert statements manage error handling and control flow in different scenarios.

Example Interactions
requireEX(uint newBudget):
Call requireEX(50000). If newBudget is not zero, it will set budget to 50,000. If newBudget is zero, it will throw an error.
assertEX():
Call assertEX(). It will return the total impact of budget and reach and a message indicating the success or need for improvement of the campaign.
revertEX(uint256 newReach):
Call revertEX(8000). It will revert with the message "Campaign reach is too low."
Call revertEX(25000). It will revert with the message "Campaign reach is average."
License
This contract is licensed under the MIT License.
