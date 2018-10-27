Feature: User can login to the system
  As a registered user
  So that I can interact with the system
  I want to log in the system

Scenario: Login success
  Given I am a registered user
  And I log out
  When I follow "Accedi"
  And I fill in "Email" with "antonini.andrealuca@gmail.com"
  And I fill in "Password" with "10101010"
  And I follow "Accedi"
  Then I should be on the home page
  When I follow "Profilo"
  Then I am on my profile page

Scenario: Login failure
  Given I am a registered user
  And I log out
  When I follow "Accedi"
  And I fill in "Email" with "gaucho@diag.uniroma1.it"
  And I fill in "Password" with "RinoGattuso"
  And I follow "Accedi"
  Then I should be on the login page
  And I should see "Accedi"
  And I should see "Registrati"
