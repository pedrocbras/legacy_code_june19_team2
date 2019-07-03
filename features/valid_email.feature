Feature: Check for a valid email
    As a user,
    When to sign up for a new account
    I need to have a valid email

Scenario: If user email is not valid
    Given I visit the site
    Then I should see "Sign up"
    When I click "Sign up"
    Then I fill in "Name" with "John Doe"
    And I fill in "Email" with "johndoe"
    And I fill in "Password" with "password1"
    And I fill in "Password confirmation" with "password1"
    And I click "Create"
    Then i should see "Email is invalid"