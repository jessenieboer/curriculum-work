Feature: Determine if a day is Friday
  This feature allows the system to check if a given day of the week is Friday. It takes a day as input and returns whether it is Friday or not.

  Assumptions:
  - The input day is a string representing the full name of the day in English, with the first letter capitalized (e.g., "Monday", "Tuesday", etc.).
  - The function returns "Yes" if the day is Friday, "No" if it is another valid day, and "Invalid day" if the input is not a valid day.

  @normal
  Scenario Outline: Check if a valid day is Friday
    Given the day is "<day>"
    When I call the function to check if it is Friday
    Then the function should return "<result>"

    Examples:
      | day       | result |
      | Monday    | No     |
      | Tuesday   | No     |
      | Wednesday | No     |
      | Thursday  | No     |
      | Friday    | Yes    |
      | Saturday  | No     |
      | Sunday    | No     |

  @abnormal
  Scenario Outline: Check if an invalid day is handled correctly
    Given the day is "<invalid_day>"
    When I call the function to check if it is Friday
    Then the function should return "Invalid day"

    Examples:
      | invalid_day |
      | Freeday     |
      | 123         |
      | ""          |
