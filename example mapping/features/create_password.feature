Feature: Create Password
         Force users to create a strong Password
         in order to avoid malicious actors from
         easily guessing passwords


Scenario: Creating a password
  Given the user is on the create password page
  When the user types a password in the password field
  And the user leaves the password field with a non valid password
  Then the user should be shown an error message
  Then the user should be redirected back to the create password page