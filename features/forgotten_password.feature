Feature: Forgotten Password
    As a user,
    In order to help me remember my CA Mailboxer Account Password,
    I would like to have a "Forgot Password" option to help me retrieve my forgotten password

    Background:
        Given the following user exists
        | email        | password   | name |
        | john@doe.com | password1  | John |
        And I visit the site

    Scenario: If user forgets password they can request it to be recovered (happy path)
        When I click "Login"
        And I click "Forgot your password?"
        And I should see "Forgot your password?"
        When I fill "Email" with "john@doe.com"
        And I click "Send me reset password instructions"
        Then I should see "You will receive an email with instructions on how to reset your password in a few minutes."

    Scenario: Not possible to recover password due to invalid email (sad path)
        When fill "Email" with "john"
        And I click "Send me reset password instructions"
        Then I should see "Email not found"

    Scenario: Not possible to recover password due no user with that email (sad path)
        When I fill "Email" with "michael@doe.com"
        And I click "Send me reset password instructions"
        Then I should see "Email not found"