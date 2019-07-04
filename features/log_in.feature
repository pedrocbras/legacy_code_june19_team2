Feature: Check for a valid email
    As a user,
    When I enter my account
    I need be able to log in

Scenario: If user wants to log in
    Given the following user exists
      | email        | password   | name |
      | john@doe.com | password1  | John |
    Given I visit the site
    Then I should see "Login"
    When I click "Login"
    Then I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password1"
    And I click "Log in"
    Then I should see "Signed in successfully."