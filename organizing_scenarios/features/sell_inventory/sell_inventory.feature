@nightly
Feature: Sell Products From Inventory

  @test1001 @inventory @sellwidgets
  Scenario: Successfully remove products sold from inventory
    
    Given we have added 1000 widgets to inventory
    When we sell 100 widgets
    Then 100 widgets should be removed from inventory

  @test1002 @inventory @receivewidgets
  Scenario: Successfully add products to inventory
    
    Given we have 100 widgets in inventory
    When we receive 1000 widgets
    Then we should have 1100 widgets in inventory
    