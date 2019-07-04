Feature: Delete Messages
    As a user,
    In order to delete messages I've received,
    I should have a Move to Trash function that sends messages to the trash

Background: 
    Given the following user exists
    | email         |  password  | name       |
    | dash@craft.com|  password |  Dash       |
    And I visit the site
   
   Scenario: User deletes a message
    When I click "Inbox"
    Then I should see my messages
    



