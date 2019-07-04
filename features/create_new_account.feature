Feature: Creating new user
  As a User,
  When I visit the landing page of the application
  I would like to be able to create a new account

  Background:
    Given I visit the site
    Then I should see "Sign up"

  Scenario: Create new account
    When I click "Sign up" link
    Then I fill "Name" with "John Doe"
    And I fill "Email" with "johndoe@gmail.com"
    And I fill "Password" with "password1"
    And I fill "Password confirmation" with "password1"
    And I click "Create"
    Then I should see "Welcome! You have signed up successfully."

  Scenario: Not possible to create new account when no info is given
    When I click "Sign up" link
    Then I fill "Name" with ""
    And I click "Create"
    Then I should see "Name can't be blank"
    When I click "Sign up" link
    When I fill "Email" with ""
    And I click "Create"
    Then I should see "Email can't be blank"
    When I click "Sign up" link
    When I fill "Password" with ""
    And I click "Create"
    Then I should see "Password can't be blank"
    When I click "Sign up" link
    When I fill "Password confirmation" with ""
    And I click "Create"
    Then I should see "Encrypted password can't be blank"

  Scenario: Not possible to create new account when wrong info is given
    When I click "Sign up"
    Then I fill "Name" with "John Doe"
    And I fill "Email" with "johndoe"
    And I fill "Password" with "password1"
    And I fill "Password confirmation" with "password1"
    And I click "Create"
    Then I should see "Email is invalid"
    When I click "Sign up"
    Then I fill "Name" with "John Doe"
    And I fill "Email" with "john@doe.com"
    And I fill "Password" with "pass"
    And I fill "Password confirmation" with "pass"
    And I click "Create"
    Then I should see "Password is too short (minimum is 8 characters)"
    When I click "Sign up"
    Then I fill "Name" with "John Doe"
    And I fill "Email" with "john@doe.com"
    And I fill "Password" with "password1"
    And I fill "Password confirmation" with "password2"
    And I click "Create"
    Then I should see "Password confirmation doesn't match Password"