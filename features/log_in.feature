Feature: User can login
    As a user,
    When I enter my account
    I need be able to log in

Background:
    Given the following user exists
    | email        | password   | name |
    | john@doe.com | password1  | John |
    And I visit the site

Scenario: User can login successfully
    When I click "Login"
    When I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password1"
    And I click "Log in"
    Then I should see "Signed in successfully."

Scenario: User cant login with invalid credentials [Sad Path]
    When I click "Login"
    When I fill in "Email" with "hoedoe"
    And I fill in "Password" with "laputamadre"
    And I click "Log in"
    Then I should see "Invalid Email or password"
    Then I fill in "Email" with ""
    And I fill in "Password" with ""
    And I click "Log in"
    Then I should see "Invalid Email or password"


Scenario: User cant login without valid credentials [Sad Path]
    When I click "Login" 
    And I click "Log in"
    Then I should see "Invalid Email or password."
    When I fill in "Email" with ""
    And I click "Log in"
    Then I should see "Invalid Email or password."
    When I fill in "Password" with ""
    And I click "Log in"
    Then I should see "Invalid Email or password."
  
Scenario: User cant login with wrong password [Sad Path]
    When I click "Login"
    And I fill in "Email" with "johndoe@gmail.com"
    When I fill in "Password" with "wrong_password"
    And I click "Log in"
    Then I should see "Invalid Email or password."

  