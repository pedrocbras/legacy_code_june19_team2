Feature: User can log out
    As a user,
    In order to sign out of my CA Mailboxer account,
    I must have a "Log Out" function that confirms I have signed out

Background:
    Given the following user exists
    | email        | password   | name |
    | john@doe.com | password1  | John |
    And I visit the site
    And I click "Login"
    And I fill "Email" with "john@doe.com"
    And I fill "Password" with "password1"
    And I click "Log in"
    Then I should see "Signed in successfully."

Scenario: User can logout successfully
    When I click "Logout"
    Then I should see "Signed out successfully."