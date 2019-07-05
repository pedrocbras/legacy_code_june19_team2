  Given("I visit the site") do
    visit(root_path)
  end

  When("I click {string} link") do |link|
    click_on link
  end
  
  When("I click {string}") do |element|
    click_on(element)
  end

  Then("I fill {string} with {string}") do |field, content|
    fill_in(field, with: content)
end
