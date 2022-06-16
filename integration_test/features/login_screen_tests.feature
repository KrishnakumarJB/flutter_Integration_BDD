@all
Feature: Login tests
  Scenario: Login with invalid user credentials
    Given user navigates to login screen
    When enter invalid email in email field
    And enter invalid password in password field
    And press login button
    Then verify user login failed

  Scenario: Login with valid user credentials
    Given user navigates to login screen
    When enter email in email field
    And enter password in password field
    And press login button
    Then verify user logged in successfully