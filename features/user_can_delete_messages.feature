@javascript
Feature: User can delete messages

    As a user
    In order to only have relevant messages in the inbox
    I would like to be able to delete messages

    Background:
        Given the following user exists
            | email            | password | name  |
            | dash@craft.com   | password | Dash  |
            | farazh@craft.com | password | Faraz |
        And the following messages exist
            | sender | receiver | subject | body    |
            | Faraz  | Dash     | Hola!   | Bla bla |

    Scenario: User can delete a message
    Given I am logged in as "Dash"
    And I am on the inbox page
    When I click "Inbox"
    Then I should see "1" message
    When I click "View"
    And I click "Move to trash"
    And I click to accept the alert message 
    And I am on the "inbox" page
    Then I should have "0" messages

