Feature: Jules sign_up tests

  Background:
    Given signin: I am a user on Jules signin page

  @signup
  Scenario: Functionality of Log in link
    When signin: I click on sign_up link
    When signup: I click on log in link
    Then signin: I verify if word account exists on page

  @signup
  Scenario Outline: Error message for empty first_name input
    When signin: I click on sign_up link
    When signup: I click on personal button
    When signup: I click on continue button
    When signup: I enter my first name "<first_name>"
    Then signup: I verify the error for empty input

    Examples:
     | first_name |
     | mes;;!@$%&*|
     | 12345567890|

  @signup
  Scenario: Check empty first_name input
    When signin: I click on sign_up link
    When signup: I click on personal button
    When signup: I click on continue button
    When signup: I enter my first name "George"
    Then signup: I verify first_name input name to match to ""

  @signup
   Scenario Outline: Check email input error
    When signin: I click on sign_up link
    When signup: I click on personal button
    When signup: I click on continue button
    When signup: I enter my first name "George"
    When signup: I click on continue button after entering first name
    When signup: I enter my last name "Petrescu"
    When signup: I click on continue button after entering last name
    When signup: I enter my email "<email>"
    Then signup: I verify the email error message

    Examples:
      | email          |
      | email@email.com|
      | 12345567890    |
      | ::''':::;;<<<  |