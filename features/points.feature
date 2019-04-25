Feature: Add points
  
  As a user
  So that I can easily contribute to my account
  I want to be able to earn points
  
Scenario: As a user I want to be able to earn points
  Given I am on the Complete assignment page
  When I fill the "assignment[Goalgrade]" field with value "100"
  And I click on the "Complete Assignment" link
  Then "Current Points" should be incremented