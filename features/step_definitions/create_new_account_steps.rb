Given("I visit the site") do
    visit root_path
  end
  
  Then("I should see {string}") do |string|
    expect(page).to have_content "Sign up"
  end

  When("I click  {string} link") do |button|
    click_on(button)
  end
  
  Then("I fill in {string} with {string}") do |field, content|
    fill_in(field, :with => content)
  end
  
  Then("I click {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  