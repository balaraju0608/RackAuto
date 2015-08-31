# Feature Fule for the below scenarios
# 6  A user can mark an item as completed.
# 8  A user can clear the completed items.








Feature: UI Automation to cover all of CRUD scenarios of the Todo items
  In order to cover all of CRUD scenarios of the ToDo items
  As a Ruby automation developer
  I want to navigate demo webapp

  Scenario: A user can mark an item as completed
    Given I am on demo webapp home page
    When I check on an item "<todoitemtobechecked>"
      And click on link clear completed
    Then an item "<todoitemtobechecked>" should be completed
      And the item "<todoitemtobecleared>" should cleared

  Examples:  : Delete an item
  |todoitemtobechecked      |todoitemtobecleared
  |ToDo1                    |ToDo1
  |ToDo2                    |ToDo2
  |ToDo3                    |ToDo3



