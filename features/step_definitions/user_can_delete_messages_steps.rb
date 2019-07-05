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
  
  Given("I am on the {string} page") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should see {string} message") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end
  