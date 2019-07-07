Feature: Creating new user
  As a User,
  When I visit the landing page of the application
  I would like to be able to create a new account

  Background:
    Given I visit the site
    And I click "Sign up"

  Scenario: Create new account
    When I enter "John Doe" into the "Name" field
    And I enter "johndoe@gmail.com" into the "Email" field
    And I enter "password1" into the "Password" field
    And I enter "password1" into the "Password confirmation" field
    And I click "Create"
    Then I should see "Welcome! You have signed up successfully."

  Scenario: Not possible to create new account when no info is given
    When I fill "Name" with ""
    And I fill "Email" with ""
    And I fill "Password" with ""
    And I fill "Password confirmation" with ""
    And I click "Create"
    Then I should see "Name can't be blank"
    And I should see "Email can't be blank"
    And I should see "Password can't be blank"
    And I should see "Encrypted password can't be blank"

  Scenario: Not possible to create new account when wrong info is given
    When I fill "Name" with "John Doe"
    And I fill "Email" with "johndoe"
    And I fill "Password" with "password1"
    And I fill "Password confirmation" with "password1"
    And I click "Create"
    Then I should see "Email is invalid"
    

  Scenario: Not possible to create new account when invalid password is given
    When I fill "Name" with "John Doe"
    And I fill "Email" with "john@doe.com"
    And I fill "Password" with "pass"
    And I fill "Password confirmation" with "pass"
    And I click "Create"
    Then I should see "Password is too short (minimum is 8 characters)"

  Scenario: Not possible to create new account when password does not match
    When I fill "Name" with "John Doe"
    And I fill "Email" with "john@doe.com"
    And I fill "Password" with "password1"
    And I fill "Password confirmation" with "password2"
    And I click "Create"
    Then I should see "Password confirmation doesn't match Password"