Feature: Check for a valid email
    As a user,
    When to sign up for a new account
    I need to have a valid email

Scenario: If user email is not valid
    Given a invalid email is inserted
    Then i should get a error message