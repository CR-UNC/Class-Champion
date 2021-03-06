Feature: Add a new assignment entry
  
  As a user
  So that I can easily contribute to my account
  I want to be able to add a new assignment entry
  
Scenario: As a user I want to be able to interact with assignment's page  
    Given I am on the home page
  When I press the "Sign In" link
  Then I should be on the "Sign-in" page
  When I fill the account email textbox with value "example@uncc.edu"
  And I fill the password textbox with value "example"
  And I press the "Sign in" button
  Given I am on the assignments page
  When I click on the "Add Assignment" link
  Then I should be on the "New Assignment" page
  And I should see the "Assignment Name" field
  And I should see the "Assignment Description" field
  And I should see the "Difficulty on a scale of 1 to 10" field
  And I should see the "Goal Grade" field
  And I should see the "assignment_Due_1i" field
  And I should see the "assignment_Due_2i" field
  And I should see the "assignment_Due_3i" field
  And I should fill the "assignment_title" field with "test1"
  And I should fill the "assignment_text" field with "Test"
  And I should fill the "assignment_difficulty" field with "10"
  And I should fill the "assignment_Goalgrade" field with "100"
  
  