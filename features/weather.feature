Feature: User can check the weather
  As a registered user
  So that I can check the weather in the destination city
  I want to see this information on the home page
  
Scenario: Show the weather
  Given I am a registered user
  When I am on the home page
  And I select the option containing "Roma Ciampino (CIA)" in "cittaArrivo"
  Then I should see "Città: Roma"
