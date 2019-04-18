Feature: Add a new incentive entry
  
  As a user
  So that I can easily contribute to my account
  I want to be able to add a new incentive entry
  
Scenario: As a user I want to be able to interact with incentive's page  
  Given I am on the incentives page
  When I click on the "Create Incentive" link
  Then I should be on the "New Incentive" page
  And I should see the "Incentive Name" field
  And I should see the "Incentive Description" field
  And I should see the "incentive_cost" field
  And I should see the "incentive_image" field