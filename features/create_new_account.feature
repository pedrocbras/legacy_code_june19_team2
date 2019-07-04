Feature: Creating new user
  As a User,
  When I visit the landing page of the application
  I would like to be able to create a new account

  Scenario: Create new account
    Given I visit the site
    Then I should see "Sign up"
    When I click  "Sign up" link
    Then I fill in "Name" with "John Doe"
    And I fill in "Email" with "johndoe@gmail.com"
    And I fill in "Password" with "password1"
    And I fill in "Password confirmation" with "password1"
    And I click "Create"
    Then I should see "Welcome! You have signed up successfully."
    


