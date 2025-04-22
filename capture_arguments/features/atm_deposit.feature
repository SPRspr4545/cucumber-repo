Feature: ATM Cash Deposit

  Scenario: Successfully deposit cash to a savings
            account using an ATM machine
    
    Given the savings account has a balance of $1000
    And my chequing account has a balance of $1000
    When I deposit $500 to my savings account
    Then $500 should be credited to my savings account
    And the new balance in my savings account should be $1500
    And the balance in my chequing account should be $1000