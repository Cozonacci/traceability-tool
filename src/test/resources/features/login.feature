Feature: User login

  This feature is about

  Scenario: Successful login

    This scenario is about

    Given the user is on the login page
    When the user enters 'valid' credentials
    Then the user should be redirected to the dashboard

  Scenario: Rejected login

  This scenario is about

    Given the user is on the login page
    When the user enters 'invalid' credentials
    Then the user should be redirected to the dashboard

  @WIP
  Scenario: Expired credentials login

  This scenario is about work in progress

    Given the user is on the login page
    When the user enters 'expired' credentials
    Then the user should be redirected to the dashboard