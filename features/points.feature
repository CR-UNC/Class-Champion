Feature: Add points
  
  As a user
  So that I can easily contribute to my account
  I want to be able to earn points
  
Scenario: As a user I want to be able to earn points
  Given I am on the home page
  When I press the "Sign Up" link
  Then I should be on the "Sign-up" page
  When I fill the account email textbox with value "example@uncc.edu"
  And I fill the Username texbox with value "example"
  And I fill the password textbox with value "example"
  And I press the "Sign Up" button
  Given I am on the assignments page
  Given There is an assignment
  When I click on the "Complete" link
  Then I should be on the "Complete Assignment" page
  
  And I click on the "Complete Assignment" link
  Then "Current Points: " should be incremented