Feature: Add

Scenario: Add two numbers
  Given the input "1+1"
  When the calculator is executed
  Then the output should be "2"