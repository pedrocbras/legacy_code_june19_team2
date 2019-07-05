Feature: User can Send a Message
    As a user,
    In order to communicate with another user
    I should have an inbox that sends messages

Background: 
    Given the following user exists
        | email              |  password  | name       |
        | hackerman@gmail.com|  hackerman |  Hackerman |
        | lonelygal@gmail.com|  lonelygal |  LonelyGal |
    Given I am logged in as "Hackerman"
    And I visit the site

  Scenario: Send Messages to another user
    When I click "Inbox"
    When I click "Compose"
    When I select "Recipient" named "LonelyGal"
    And I enter "Hello!" into the "conversation[subject]" field
    And I enter "This is a test message" into the "conversation[body]" field
    When I click "Send Message"
    Then I should see "Your message was successfully sent!"
    
