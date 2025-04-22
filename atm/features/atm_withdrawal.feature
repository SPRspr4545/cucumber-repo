Feature: ATM Cash Withdrawal

  Scenario: Successfully withdraw cash from a bank
            account using an ATM machine
            
    Given the bank account has a balance of $1000
    When I withdraw $500
    Then $500 should be dispensed