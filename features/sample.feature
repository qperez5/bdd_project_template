Feature: Adding numbers

  Scenario Outline: Number <a> and number <b> sum <sum>
    Given a number a <a>
    And a number b <b>
    When both numbers are added
    Then the result is <sum>

    Examples:
      | a   | b   | sum |
      | 1   | 2   | 3   |
      | 2   | 2   | 4   |
      | 4   | 2   | 6   |
      | 4.5 | 2.5 | 7   |