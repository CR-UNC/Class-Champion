Feature: Homepage sign in and sign up
  
  As a user
  So that I can easily access my account
  I want to be able to sign in or sign up
  
Scenario: As a user I want to be able to sign up
  Given I am on the home page
  When I press the ".sign_up" link
  Then I should be on the "Sign up" page
  When I fill the account email textbox with value "example@uncc.edu"
  And I fill the Username texbox with value "example"
  And I fill the password textbox with value "example"
  And I press the "sign_up" link

Scenario: As a user I want to be able to sign in  
  Given I am on the home page
  When I fill the account email textbox with value "example@uncc.edu"
  And I fill the password textbox with value "example"
  And I click the submit button