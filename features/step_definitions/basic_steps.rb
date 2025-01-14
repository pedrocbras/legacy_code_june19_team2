Given("the following user exists") do |table|
  table.hashes.each do |user|        
      FactoryBot.create(:user, user)
    end
  end

Given("the following messages exist") do |table|
  table.hashes.each do |email|
    sender = User.find_by(name: email[:sender])
    @receiver = User.find_by(name: email[:receiver]) 
    sender.send_message(@receiver, email[:body], email[:subject])  
  end
end

Given("I visit the site") do
  visit(root_path)
end

Given("I am on the inbox page") do 
  visit mailbox_inbox_path
end

When("I click to accept the alert message") do
  alert = page.driver.browser.switch_to.alert.accept
end

When("I click {string}") do |element|
  click_on(element)
end

Given(/^I am logged in as "([^"]*)"$/) do |name|
  user = User.find_by(name: name)
  login_as(user, scope: :user)
end

And("I enter {string} into the {string} field") do |input, field|
  fill_in field, with: input
end

When("I fill {string} with {string}") do |field, input|
  fill_in field, with: input
end

When("I select {string} named {string}") do |field, recipient|
  select recipient, from: field
end

