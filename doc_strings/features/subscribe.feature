Feature: Subscribe to blog

  Scenario: Successfully send a message to a user who has subscribed
    
    Given a user with username Joe has clicked subscribe
    Then they should receive a message containing:
    """
    Hey,

    You have successfully signed up for our blog!

    Happy blogging!
    """
    And the new account for the user Joe should be created