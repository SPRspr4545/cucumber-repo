Feature: Addition
         We're just going to add two integers


Scenario Outline: Add two integer values
  Given the input <input>
  When we add the integer values
  Then the result should be <result>

Examples:
| input | result |
| 99+1  | 100    |
| 5*20  | 100    |
| 100/20|   5    |

Scenario: Add two integer values
  Given the input 99+1
  When we add the integer values
  Then the result should be 100

Scenario: Add two integer values
  Given the input 2000+2000
  When we add the integer values
  Then the result should be 400