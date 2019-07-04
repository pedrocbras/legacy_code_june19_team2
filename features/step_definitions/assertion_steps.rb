Then("I fill {string} with {string}") do |field, content|
    fill_in(field, with: content)
end