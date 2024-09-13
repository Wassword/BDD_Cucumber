Feature: Add to Cart Functionality

  Scenario: User adds a single item to the cart
    Given the user is on the product page for "Wireless Mouse"
    When the user clicks the "Add to Cart" button
    Then the item "Wireless Mouse" should be added to the cart
    And the cart should display 1 item

  Scenario: User adds multiple items to the cart
    Given the user is on the product page for "Wireless Keyboard"
    When the user clicks the "Add to Cart" button
    And the user navigates to the product page for "Laptop Stand"
    And the user clicks the "Add to Cart" button
    Then the cart should display 2 items
    And the items "Wireless Keyboard" and "Laptop Stand" should be in the cart

  Scenario: User removes an item from the cart
    Given the user has "Wireless Mouse" and "Laptop Stand" in the cart
    When the user removes "Wireless Mouse" from the cart
    Then the cart should display 1 item
    And the item "Laptop Stand" should be in the cart
