Feature: Withdraw cash from account

Scenario Outline: Check account balances
Given I have a balance of <balance> in my account
When I choose to withdraw <withdraw>
Then the new balance in my account should be <new balance>

Examples:
| balance  | withdraw | new balance |
| $1000    | $200     | $800        |
| $500     | $300     | $200        |
| $2000    | $1900    | $100        |
| $1500    | $500     | $1000       |
| $100     | $99      | $1          |