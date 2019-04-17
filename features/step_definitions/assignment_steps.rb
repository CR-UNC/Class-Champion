Given("I am on the home page") do
  visit root_path
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
end

When("I fill the Username texbox with value {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I fill the password textbox with value {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

When("I click the Sign Up button") do
  click_button
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