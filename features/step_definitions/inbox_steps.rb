Given("the following user exists") do |table|
  table.hashes.each do |table|
    FactoryBot.create(:user, table)
  end
end

Given("I visit the site") do
  visit(root_path)
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

When("I click {string}") do |button|
  click_on button
end

When("I enter {string} into the {string} field") do |string, string2|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I click on {string} button") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see a {string} and {string} and {string} and {string}") do |string, string2, string3, string4|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see {string} in my inbox area") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end