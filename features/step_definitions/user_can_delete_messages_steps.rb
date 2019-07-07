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
  
Then("I should have {string} message") do |string|
  visit mailbox_inbox_path
end
  