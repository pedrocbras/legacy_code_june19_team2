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

When("I enter {string} into the {string} field") do |input, field|
  fill_in field, with: input
end

Then("I click on {string} button") do |button|
  click_on button
end

Then("I should see a {string} button and {string} and {string} and {string}") do |element1, element2, element3, element4|
  expect(page).to have_content element1
end