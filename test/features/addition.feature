Feature: Addition
         We're just going to add two integers


Scenario Outline: Add two integer values
  Given the input <input>
  When we add the integer values
  Then the result should be <result>

Examples:
| input | result |
| 99+1  | 100    |
| 98+2  | 100    |