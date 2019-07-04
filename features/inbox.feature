Feature: Have a working Inbox
    As a user,
    In order to read & send messages
    I should have an inbox that receives and sends messages

Background: 
    Given the following user exists
        | email              |  password  | name       |
        | hackerman@gmail.com|  hackerman |  Hackerman |
    Given I visit the site

  Scenario: View Inbox when User Logs In
    Then I should see "Login"
    When I click "Login"
    And I enter "hackerman@gmail.com" into the "Email" field
    And I enter "hackerman" into the "Password" field
    And I click "Log in"
    Then I should see "Signed in successfully."
    And I click on "Inbox" button
    Then I should see a "Compose Button" and "Inbox" and "Sent" and "Trash"
    And I should see "No messages yet" in my inbox area
    

  # Scenario: Send Messages to another user
  #   When I click on "Compose" in my Inbox
  #   Then I should see "Recipients" and "Subject" and "Message"
  #   And I enter "Bob" into the "Recipients" field
  #   And I enter "Hello!" into the "Subject" field
  #   And I enter "This is a test message" into the "Message" field
  #   And I click on the "Send Message" button
  #   Then I should see "Your message was successfully sent!"
