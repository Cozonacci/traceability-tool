Feature: User login

  This feature is about

  @SCRUM-1
  Scenario: Successful login

    This scenario is about

    Given the user is on the login page
    When the user enters 'valid' credentials
    Then the user should be redirected to the dashboard

  @SCRUM-1
  Scenario: Rejected login

  This scenario is about

    Given the user is on the login page
    When the user enters 'invalid' credentials
    Then the user should be redirected to the dashboard