# Feature Fule for the below scenarios
# 7   A user can delete an item.









Feature: UI Automation to cover all of CRUD scenarios of the Todo items
  In order to cover all of CRUD scenarios of the ToDo items
  As a Ruby automation developer
  I want to navigate demo webapp

  Scenario: A user can delete an item
    Given I am on demo webapp home page
    When I mouse hover right corner of an "<todoitem>" item
      And click on cross mark
    Then "<todoitem>" item should be deleted

  Examples:  : Delete an item
    |todoitem
    |ToDo1
    |ToDo2
    |ToDo3
