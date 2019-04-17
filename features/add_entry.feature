Feature: Add a new assignment entry
  
  As a user
  So that I can easily contribute to my account
  I want to be able to add a new assignment entry
  
Scenario: As a user I want to be able to sign up
  Given I am on the home page
  When I click on the "Sign Up" link
  Then I should be on the "Sign up" page
  When I fill the account email textbox with value "example@uncc.edu"
  And I fill the Username texbox with value "example"
  And I fill the password textbox with value "example"
  And I click the Sign Up button

Scenario: As a user I want to be able to sign in  
  Given I am on the home page
  When I fill the account email textbox with value "example@uncc.edu"
  And I fill the password textbox with value "example"
  And I click the submit button
  

Scenario: As a user I want to be able to interact with assignment's page  
  Given I am on the assignments page
  When I click on the "Add Assignment" link
  Then I should be on the "New Assignment" page
  And I should see the "Assignment Name" field
  And I should see the "Assignment Description" field
  And I should see the "Difficulty on a scale of 1 to 10" field
  And I should see the "Goal Grade" field
  And I should see the "Due Date" date