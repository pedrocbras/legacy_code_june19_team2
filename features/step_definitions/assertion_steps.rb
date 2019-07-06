Then("I should see {string}") do |content|
    expect(page).to have_content(content)
end

Then(/^I should see "([^"]*)" message$/) do |expected_count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end