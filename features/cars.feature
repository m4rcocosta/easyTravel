Feature: Company users can rent a car
	As a company user
	So that I can rent a car
	I want to be redirected on the appropriate website
	
Scenario: Rent a car
	Given I am a company user
	When I log in
	And show me the page
	And I follow "Auto"
	And I select the option containing "Roma" in "cittaRitiro"
	And I select the option containing "Milano" in "cittaConsegna"
	And I fill in "dataRitiro" with "25-12-2018"
	And I fill in "oraRitiro" with "10:00"
	And I fill in "dataConsegna" with "26-12-2018"
	And I fill in "oraConsegna" with "10:00"
	And I fill in "numeroPasseggeri" with "1"
	And I fill in "etaConducente" with "22"
	And I follow "Ricerca"
	Then I should be redirected on Skyscanner results for car
	
