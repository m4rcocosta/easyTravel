Feature: Company users can rent a car
	As a company user
	So that I can rent a car
	I want to be redirected on the appropriate website
	
Scenario: Rent a car
	Given I am a company user
	When I log in
	And I am on the home page
	When I follow "Auto"
	And I fill in "cittaRitiro" with "Roma"
	And I fill in "cittaConsegna" with "Milano"
	And I fill in "dataRitiro" with "25-10-2018"
	And I fill in "oraRitiro" with "10:00"
	And I fill in "dataConsegna" with "26-10-2018"
	And I fill in "oraConsegna" with "10:00"
	And I fill in "numeroPasseggeri" with "1"
	And I fill in "etaConducente" with "22"
	And I follow "Ricerca"
	Then I should be redirected on Skyscanner results for car
	
