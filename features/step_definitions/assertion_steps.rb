Then("I fill {string} with {string}") do |field, content|
    fill_in(field, with: content)
end

Then("I should see {string}") do |content|
    expect(page).to have_content(content)
  end