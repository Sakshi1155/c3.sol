// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MarketingSystem {
    uint public budget = 95000; // Marketing campaign budget in dollars
    uint public reach = 33000; // Expected reach in people

    function requireEX(uint newBudget) public {
        require(newBudget != 0, "Budget cannot be zero.");
        budget = newBudget;
    }

    function assertEX() public view returns (uint, string memory) {
        uint totalImpact = budget + reach; // Calculating total marketing impact
        assert(totalImpact >= 0);
        if (totalImpact >= 50000) {
            return (totalImpact, "Marketing campaign is successful.");
        } else {
            return (totalImpact, "Marketing campaign needs improvement.");
        }
    }

    function revertEX(uint256 newReach) public pure {
        if (newReach <= 10000) {
            revert("Campaign reach is too low.");
        } else if (newReach <= 20000) {
            revert("Campaign reach is below average.");
        } else if (newReach <= 40000) {
            revert("Campaign reach is average.");
        } else if (newReach <= 60000) {
            revert("Campaign reach is above average.");
        } else {
            revert("Campaign reach is excellent.");
        }
    }
}
