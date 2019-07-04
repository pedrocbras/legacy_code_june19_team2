Feature: Have a working Inbox
    As a user,
    In order to read & send messages
    I should have an inbox that receives and sends messages

Background: 
    Given the following user exists
        | email              |  password  | name       |
        | hackerman@gmail.com|  hackerman |  Hackerman |
    Given I visit the site
    Then I should see "Login"
    When I click "Login"
    And I enter "hackerman@gmail.com" into the "Email" field
    And I enter "hackerman" into the "Password" field
    And I click "Log in"
    Then I should see "Signed in successfully."
    

  Scenario: View Inbox when User Logs In
    When I click on "Inbox" button
    Then I should see a "Compose" button and "Inbox" and "Sent" and "Trash"
    

  Scenario: Send Messages to another user
    When I click on "Inbox" button
    Then I should see a "Compose" button and "Inbox" and "Sent" and "Trash"
    When I click on "Compose" in my Inbox
    Then I should see "Recipients" and "Subject" and "Message"
    And I select a user from the "Recipient" box
    And I enter "Hello!" into the "Subject" field
    And I enter "This is a test message" into the "conversation[body]" field
    And I click on "Send Message" button
    Then I should see "Your message was successfully sent!"
    
