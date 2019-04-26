Given("I am on the home page") do
  visit root_path
end

Given("I am on the incentives page") do
 
  visit incentives_path
end

Given("I am signed in") do
  @user = User.create(:username => "test1",
                   :email => "testing@testington.com",
                   :password => "1234")
  @user.points = 0
  
  
end

Given("There is an assignment") do
  @user = User.create(:username => "test1",
                   :email => "testing@testington.com",
                   :password => "1234")
  @user.points = 0
  @user.save!
  @assignment = @user.assignments.create(:title => "Test", :text=>"tester", :difficulty => 10, :Goalgrade => 100)
  @assignment.points = (10 * @assignment.difficulty) + (@assignment.Goalgrade/2).round
  @assignment.save!
  
end

When("I click on the {string} link") do |page_name|
  click_link page_name
end

Then("I should be on the {string} page") do |page_name|
  expect(page).to have_content(page_name)
end

Then("I should see the {string} field") do |field_name|
  expect(page).to have_field(field_name)
end

When("I fill the account email textbox with value {string}") do |string|
  
  pending # Write code here that turns the phrase above into concrete actions
  fill_in "email", :with => string
  
end

When("I fill the Username texbox with value {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
  fill_in "username", :with => string
end

When("I fill the password textbox with value {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
  fill_in "password", :with => string
end


When("I press the {string} link") do |string|
  pending # Write code here that turns the phrase above into concrete actions
  click_link(string)
end

When("I click the submit button") do
  click_button
end

Given("I am on the assignments page") do
  visit assignments_path
end

Then("I should see the {string} date") do |date_name|
  expect(page).to have_date(date_name)
end

Given("I am on the Complete assignment page") do
  visit edit_assignment_path(assignment)
end

Then("I click the {string} button") do |string|
  click_button
end

Then("I should fill the assignment name field with {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
  fill_in "assignment_title", :with => string
end

Then("I should fill the assignment description field with {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
  fill_in "assignment_text", :with => string
end

Then("I should fill the assignment difficulty field with {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
  fill_in "assignment_difficulty", :with => string
end

Then("I should fill the goal grade field with {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
  fill_in "assignment_Goalgrade", :with => string
end


And("I should fill the {string} field with {string}") do |string, string2|
  
  fill_in string, :with => string2
end