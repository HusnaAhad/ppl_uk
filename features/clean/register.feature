Feature: Register to PPL UK

Background:
  Given I am on the register page 

Scenario: User succesfully registers 
  When I enter in valid credentials
  Then I should be on the dashboard 
  And I should see content available to user's

  
