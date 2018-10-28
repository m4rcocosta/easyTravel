Feature: User can login to the system
  As a registered user
  So that I can interact with the system
  I want to log in the system

Scenario: Login success
  Given I am a registered user
  When I log in
  Then I should see my avatar

Scenario: Login failure
  Given I am a registered user
  When I am on the login page
  And I fill in "Email" with "antonini.andrealuca@gmail.com"
  And I fill in "Password" with "123456"
  And I press "Login"
  Then I should be on the login page
  And I should see "Accedi"
  And I should see "Registrati"
