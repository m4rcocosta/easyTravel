Feature: oauth_login
	As a Google user
	So that I can login to the service
	I want to login with Google credentials

@omniauth_test
Scenario: User Logs in with Google
	Given I am on the home page
	And I am not logged in
	When I follow "Accedi"
	And I sign in with Google_oauth2 provider
	Then I should be on the home page
	And I should see "Successfully authenticated from Google account."
