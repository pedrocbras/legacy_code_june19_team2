Feature: See Craft Academy mailboxer & buttons on landing page
  As a visitor,
  When I visit the landing page of the application
  I would like to see Craft Academy mailboxer, Log In & Sign Up buttons

  Scenario: View Craft Academy Mailboxer
    When I visit the site
    Then I should see "Craft Academy Mailboxer"
    And I should see "Log In button"
    And I should see "Sign Up button"