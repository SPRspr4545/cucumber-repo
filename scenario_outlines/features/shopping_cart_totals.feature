Feature: Add items to shopping cart

Scenario Outline: Totals in the shopping cart
Given I have a subtotal of <subtotal> in my shopping cart
When I choose to an item costing <price>
Then the new total in my cart should be <total>

Examples:
| subtotal | price | total |
| $100     | $20   | $120  |
| $100     | $100  | $200  |
| $200     | $200  | $400  |
| $200     | $300  | $500  |
| $0       | $100  | $100  |