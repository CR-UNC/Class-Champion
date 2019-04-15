Feature: Add a new assignment entry
  
  As a user
  So that I can easily contribute to my account
  I want to be able to add a new assignment entry
  
Scenario: As a user I want to be able to navigate from the homepage to the new assignment form
  Given I am on the home page
  When I click on the "Sign In" link
  Then I should be on the "Assignments" page
  When I click on the "New Assignment" link
  Then I should be on the "New Assignment" page
  And I should see the "Title" field
  And I should see the "Text" field
  And I should see the "Difficulty" field
  And I should see the "Goalgrade" field
  And I should see the "Due" field
  And I should see the "Points" field