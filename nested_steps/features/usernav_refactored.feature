Feature: Website navigation and authentication

  Scenario: Successfully display personal user data for an authenticated user
    
    Given a user Joe has authenticated with the correct credentials
    When Joe clicks the login button
    Then personal data associated with Joe should be displayed
    And the user Joe should see the message "Login Successful"