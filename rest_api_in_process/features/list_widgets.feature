Feature: Widgets API

  Scenario: List widgets
    
    Given the api has these products to list:
    |name        |type        |price  |
    |widget si   |ohc dfi     |5000   |
    |widget tsi  |ohc turbo   |7500   |
    |widget hsi  |ohc hybrid  |7500   |

    When the client requests GET /widgets

    Then the response should be JSON:
    """
    [
      {"name": "widget si", "type": "ohc dfi", "price": "5000"},
      {"name": "widget tsi", "type": "ohc turbo", "price": "7500"},
      {"name": "widget hsi", "type": "ohc hybrid", "price": "7500"}
    ]
    """