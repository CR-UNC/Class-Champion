Feature: Add a new assignment entry
  
  As a user
  So that I can easily contribute to my account
  I want to be able to add a new assignment entry
  
Scenario: As a user I want to be able to interact with assignment's page  
  Given I am on the assignments page
  When I click on the "Add Assignment" link
  Then I should be on the "New Assignment" page
  And I should see the "Assignment Name" field
  And I should see the "Assignment Description" field
  And I should see the "Difficulty on a scale of 1 to 10" field
  And I should see the "Goal Grade" field
  #And I should see the "Due Date" date
  When I click on the "Create Assignment" link