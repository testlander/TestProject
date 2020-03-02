Feature: Zero Bank HomePage Test Features

  Zero Bank HomePage Test Cases

  @HighPriority
  Scenario: Verify the Login Section
    Given I visit demo web site
    When I enter a valid username as "mngr245111"
    And I enter a valid password as "ymupEja"
    And I click "btnLogin" button
    Then I validate that I successfully login to "Demo Site"
    And I click "Log out" link
