  Given("I visit the site") do
    visit root_path
  end

  When("I click {string} link") do |button|
    click_on button
  end
  
  When("I click {string}") do |button|
    click_on button
  end
