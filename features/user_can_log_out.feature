Feature: User can log out
    As a user,
    In order to sign out of my CA Mailboxer account,
    I must have a "Log Out" function that confirms I have signed out

Background:
    Given the following user exists
    | email        | password   | name |
    | john@doe.com | password1  | John |
    And I am logged in as "John"
    And I visit the site

Scenario: User can logout successfully
    When I click "Logout"
    Then I should see "Signed out successfully."