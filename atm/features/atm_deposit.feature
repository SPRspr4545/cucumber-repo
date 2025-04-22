Feature: ATM Cash Deposit

  Scenario: Successfully deposit cash to a bank
            account using an ATM machine
    
    Given the bank account has a balance of $1000
    When I deposit $500
    Then $500 should be credited to my account
    And the new balance should be $1500