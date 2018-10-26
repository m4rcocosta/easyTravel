Feature: Remove account
	As a registered user
	So that I can deregister me
	I want to remove my account

Scenario: Remove account
	Given I am a registered user
	And I am on the home page
	When I follow "Profilo"
	And I press "Cancella il mio account"
	And I press "Ok"
	Then I should be on the home page
	And I should see "Accedi"
	And I should see "Registrati"
