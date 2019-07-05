Given("the following user exists") do |table|
  table.hashes.each do |table|
    FactoryBot.create(:user, table)
  end
end

Given("I visit the site") do
  visit root_path
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
      user = User.find_by(name: name)
      login_as(user, scope: :user)
    end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

When("I click {string}") do |button|
  click_on button
end

When("I enter {string} into the {string} field") do |input, field|
  fill_in field, with: input
end

Then("I should see {string} and {string} and {string}") do |string, string2, string3|
  expect(page).to have_content string
end

Then("I select a user from the {string} box") do |string|
  select 'LonelyGal', from: 'conversation[recipients][]'
end

