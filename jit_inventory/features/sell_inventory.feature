Feature: Sell Products From Inventory

  Scenario: Successfully remove products sold from inventory
    
    Given we have added 1000 widgets to inventory
    When we sell 100 widgets
    Then 100 widgets should be removed from inventory