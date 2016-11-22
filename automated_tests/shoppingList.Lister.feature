Feature: shoppingList.lister.feature
As a user I want to be able to manipulate my shopping list 
so I can order everything I want

  Scenario: I want to share my shoppinglist with one button
    Given I am on the myJumbo screen
    When I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I tap the close button
    Then the value appel is displayed on the vagueTermTitle field
    And I tap the shoppingListMenu button
    And the shareList button is displayed

  Scenario: I want to delete my shoppinglist with one button
    Given I am on the myJumbo screen
    When I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value appel on the search field
    And I tap the enter button
    And the value appel is displayed on the vagueTermTitle field
    And I tap the vagueTermPlus button
    And I tap the close button
    Then the value appel is displayed on the vagueTermTitle field
    And I tap the shoppingListMenu button
    And I tap the deleteAll button
    Then the shoppingListAddProduct button is displayed

  Scenario: I want to see the timeslot reserved banner on my shoppinglist to inform me of my current choices
    Given I am on the myJumbo screen
    When I tap the shoppingList button
    And I tap the tooltip view
    Then the reserveTimeslot button is displayed
    And I tap the reserveTimeslot button
    And I tap the selectPup button
    And I pick the firstAvailableTimeSlot
    Then the banner view is displayed
    Then the bannerTimeslotDate view is displayed
    Then the bannerReservedTimeslotDate view is displayed
    Then the bannerChange view is displayed

  Scenario: I want to see the open order banner on my shoppinglist to inform me of my current choices
    Given I am on the myJumbo screen
    And I have placed a beer order
    When I tap the shoppingList button
    And I tap the tooltip view
    Then the openOrderbanner view is displayed

Scenario: I want delete a product from my SL
    Given I am on the myJumbo screen
    And I tap the shoppingList button
    And I tap the tooltip view
    And I tap the shoppingListAddProduct button
    And I set the value bier on the search field
    And I tap the enter button
    And I tap the skuPlus button
    And I tap the close button
    And the SKUProduct view is displayed
    And I swipe left on the firstProduct view
    And I tap the delete button
    And the SKUProduct view is not displayed

