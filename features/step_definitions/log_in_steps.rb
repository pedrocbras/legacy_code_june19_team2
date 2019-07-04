Given("the following user exists") do |table|
    table.hashes.each do |table|
      User.create(table)
    end
  end 

  Given("I visit the site") do
    visit root_path
  end
  
  Then("I should see {string}") do |button|
    expect(page).to have_content(button)
  end
  
  When("I click {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I fill in {string} with {string}") do |string, string2|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I click {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("i should see {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  