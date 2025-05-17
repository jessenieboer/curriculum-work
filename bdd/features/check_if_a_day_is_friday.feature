# [[file:../stories.org::*Check if a day is Friday][Check if a day is Friday:1]]
Feature: Check if a day is Friday
  As a developer,
  I want a function that can determine if a given day is Friday,
  so that I can confirm my BDD setup is working.

  Scenario Outline: Check if a valid day is Friday
    Given the day is "<day>"
    When I check if it's Friday
    Then the result should be "<result>"

    Examples:
      | day       | result |
      | Monday    | No     |
      | Tuesday   | No     |
      | Wednesday | No     |
      | Thursday  | No     |
      | Friday    | Yes    |
      | Saturday  | No     |
      | Sunday    | No     |

  Scenario: Check with lowercase Friday
    Given the day is "friday"
    When I check if it's Friday
    Then the result should be "Yes"


  Scenario: Check with uppercase Monday
    Given the day is "MONDAY"
    When I check if it's Friday
    Then the result should be "No"


  Scenario: Check with Friday with leading space
    Given the day is " Friday"
    When I check if it's Friday
    Then the result should be "Yes"


  Scenario: Check with Friday with trailing space
    Given the day is "Friday "
    When I check if it's Friday
    Then the result should be "Yes"


  Scenario: Check with an invalid day
    Given the day is "Funday"
    When I check if it's Friday
    Then the result should be "Invalid day"


  Scenario: Check with an empty string
    Given the day is """"
    When I check if it's Friday
    Then the result should be "Invalid day"


  Scenario: Check with abbreviation
    Given the day is "Fri"
    When I check if it's Friday
    Then the result should be "Invalid day"
# Check if a day is Friday:1 ends here
