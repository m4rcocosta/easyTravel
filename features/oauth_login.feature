Feature: oauth_login
	As a Google user
	So that I can login to the service
	I want to login with Google credentials

@omniauth_test
Scenario: User logs in with Google
	Given I am a registered user
	And I log out
	When I follow "Accedi"
	And I click on "Sign in with Google"
	Then I should see "Autenticato con successo dall'account Google."
