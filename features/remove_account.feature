Feature: Remove account
	As a registered user
	So that I can deregister me
	I want to remove my account

Scenario: Remove account
	Given I am a registered user
	When I am on the login page
    And I fill in "Email" with "antonini.andrealuca@gmail.com"
    And I fill in "Password" with "10101010"
    And I press "Login"
    Then I should see "Profilo"
    And I should see "Statistiche"
    And I should see "Esci"
	When I follow "Profilo"
	And I follow "Cancella il mio account"
	Then I should be on the home page
	And I should see "Accedi"
	And I should see "Registrati"
