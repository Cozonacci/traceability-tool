Feature: User login

  This feature is about

  @TestCaseKey=SCRUM-T1
  Scenario: Successful login

    This scenario is about

    Given the user is on the login page
    When the user enters 'valid' credentials
    Then the user should be redirected to the dashboard

  @TestCaseKey=SCRUM-T2
  Scenario: Rejected login

  This scenario is about

    Given the user is on the login page
    When the user enters 'invalid' credentials
    Then the user should be redirected to the dashboard

  @TestCaseKey=SCRUM-T3
  Scenario: Expired credentials login

  This scenario is about work in progress

    Given the user is on the login page
    When the user enters 'expired2' credentials
    Then the user should be redirected to the dashboard