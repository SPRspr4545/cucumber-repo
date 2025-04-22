Feature: Shopping Cart

  Scenario: Successfully add a book to my shopping cart
    
    Given there are 3 books in my shopping cart
    When I add 1 book to my shopping cart
    Then I should have 4 books in my shopping cart

    Scenario: Successfully add 2 books to my shopping cart
    
    Given there are 3 books in my shopping cart
    When I add 2 books to my shopping cart
    Then I should have 5 books in my shopping cart