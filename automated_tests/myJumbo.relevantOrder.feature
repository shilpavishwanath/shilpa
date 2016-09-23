Feture: Relavant Order Cell
	As a I have a new user
	I want to be able to see the first order cell when I login
	So I can be guided to place my first order

	Background:
    	Given I have a new registered B2C user
	
	@smoke_test
	Scenario: A new user should see the first order cell
		When I tap the next button
		And I tap the location button
		And I tap the allow button
		And I tap the select button
		And I tap the next button
		And I tap the tooltip view
		And I tap the tooltip view
		And I tap the login button
		And I set the property username on the emailAddress field
		And I set the property password on the password field
		And I tap the login button
		And I tap the decline button
		Then the firstOrderCell view is displayed 
	
	@smoke_test 	
	Scenario: A user with completed orders should not see the first order cell
		And I tap the next button
		And I tap the location button
		And I tap the allow button
		And I tap the select button
		And I tap the next button
		And I tap the tooltip view
		And I tap the tooltip view
		And I tap the login button
		And I set the value pricebreakdown@mailinator.com on the emailAddress field
		And I set the value qwerty on the password field
		And I tap the login logged in button is displayed 
	    And I am I am at the loginScreen
	    Then the firstOrderCell view is not displayed
	    
