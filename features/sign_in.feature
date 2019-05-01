Feature: Homepage Sign in
Scenario: As a user I want to be able to sign in  
  As a user
  I want to be able to sign in
  
  Given I am on the home page
  When I press the "Sign In" link
  Then I should be on the "Sign-in" page
  When I fill the account email textbox with value "example@uncc.edu"
  And I fill the password textbox with value "example"
  And I press the "Sign in" button