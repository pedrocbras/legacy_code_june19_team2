Given("I visit the site") do
  visit root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content(content)
end

When("I click {string}") do |button|
  click_on(button)
end

When("I fill in {string} with {string}") do |field, content|
  fill_in(field, :with => content)
end

Then("i should see {string}") do |error|
  expect(page).to have_content(error)
end