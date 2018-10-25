Feature: Company users can rent a car
	As a company user
	So that I can rent a car
	I want to be redirected on the appropriate website
	
Scenario: Rent a car
	Given I am a company user
	When I log in
	And I am on the home page
	When I follow "Auto"
	And I fill in "Città ritiro" with "Roma"
	And I fill in "Città consegna" with "Milano"
	And I fill in "Ritiro" with "25-10-2018"
	And I fill in "Orario:" with "10:00"
	And I fill in "Consegna" with "26-10-2018"
	And I fill in "Orario:" with "10:00"
	And I fill in "Passeggeri" with "1"
	And I fill in "Età conducente:" with "22"
	And I press on "Ricerca"
	Then I should be redirected on "https://www.skyscanner.it/autonoleggio/risultati/27539793/27544068/2018-10-25T10:00/2018-10-26T10:00/22"
	
