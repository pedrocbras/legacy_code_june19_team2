Given("the following user exists") do |table|
  table.hashes.each do |user|        
       FactoryBot.create(:user, user)
    end
  end

  Given("I visit the site") do
    visit(root_path)
  end
  
  Then("I should see {string}") do |button|
    expect(page).to have_content(button)
  end
  
  When("I click {string}") do |element|
    click_on(element)
  end
  
  Then("I fill in {string} with {string}") do |field, input|
    fill_in field, with: input
  end
  
  Then("i should see {string}") do |content|
    expect(page).to have_content(content)
  end
  