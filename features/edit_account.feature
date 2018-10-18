Feature: Edit account
  As a registered user
  So that I can change the info about me
  I want to edit my account

Scenario: Edit account
  Given I am a registered user
  And I log in
  When I follow "Profilo"
  And I fill in "user[password]" with "123456"
  And I fill in "user[password_confirmation]" with "123456"
  And I fill in "user[current_password]" with "10101010"
  And I press "Aggiorna"
  Then I am on the home page
  When I log out
  And I log in
  Then I am on the home page
