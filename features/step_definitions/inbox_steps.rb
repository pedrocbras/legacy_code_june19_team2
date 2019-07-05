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

When("I click {string}") do |button|
  click_on button
end

When("I enter {string} into the {string} field") do |input, field|
  fill_in field, with: input
end


When("I select {string} named {string}") do |field, recipient|
  select recipient, from: field
end

