Feature: Check for a valid email
    As a user,
    When I enter my account
    I need be able to log in

Background:
Given the following user exists
      | email        | password   | name |
      | john@doe.com | password1  | John |
Given I visit the site

Scenario: If user wants to log in
    Then I should see "Login"
    When I click "Login"
    Then I fill in "Email" with "john@doe.com"
    And I fill in "Password" with "password1"
    And I click "Log in"
    Then I should see "Signed in successfully."

Scenario: If user fill in invalid answers
    Then I should see "Login"
    When I click "Login"
    Then I fill in "Email" with "hoedoe"
    And I fill in "Password" with "laputamadre"
    And I click "Log in"
    Then I should see "Invalid Email or password"
    Then I fill in "Email" with ""
    And I fill in "Password" with ""
    And I click "Log in"
    Then I should see "Invalid Email or password"


Scenario: Not possible to log in if no info is given
    When I click "Login" 
    And I click "Log in"
    Then I should see "Invalid Email or password."
    When I fill in "Email" with ""
    And I click "Log in"
    Then I should see "Invalid Email or password."
    When I fill in "Password" with ""
    And I click "Log in"
    Then I should see "Invalid Email or password."
  
Scenario: User fucking up with wrong password
    Then I should see "Login"
    When I click "Login"
    And I fill in "Email" with "johndoe@gmail.com"
    When I fill in "Password" with "234"
    And I click "Log in"
    Then I should see "Invalid Email or password."

  