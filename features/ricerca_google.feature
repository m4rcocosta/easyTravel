Feature: Cerchiamo il sito pensieri da tester su Google
	In order to search the blog "pensieri da tester"
	As a user
	I want to search the address of the site

Scenario: Ricerca in google
	Given I am on the Google page
	When I fill in "q" with "pensieri da tester"
	And I click on search button
	Then I should see "www.pensieridatester.it"
