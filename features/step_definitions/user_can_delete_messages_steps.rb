Given("the following messages exist") do |table|
    table.hashes.each do |email|
      sender = User.find_by(name: email[:sender])
      @receiver = User.find_by(name: email[:receiver]) 
      sender.send_message(@receiver, email[:body], email[:subject])  
    end
end
  
  Given("I am logged in as {string}") do |name|
    user = User.find_by(name: name)
    login_as user, scope: :user
end
  
When("I click to accept the alert message") do
    alert = page.driver.browser.switch_to.alert.accept
end

Given("I am on the inbox page") do 
    visit mailbox_inbox_path
end
  
When("I am on the {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should have {string} messages") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

  