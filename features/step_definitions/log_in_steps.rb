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
  
  When("I click {string}") do |login|
    click_on(login)
  end
  
  Then("I fill in {string} with {string}") do |field, content|
    fill_in(field, :with => content)
  end
  
  Then("I click on {string}") do |log_in|
    click_on(log_in)
  end
  
  Then("i should see {string}") do |success|
    expect(page).to have_content(success)
  end
  