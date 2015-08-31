# Feature Fule for the below scenarios
# 3  A user can add a todo item.
# 4  The list of current todo items is correct.








Feature: UI Automation to cover all of CRUD scenarios of the Todo items
  In order to cover all of CRUD scenarios of the ToDo items
  As a Ruby automation developer
  I want to navigate demo webapp



  Scenario: A user can add a todo item
    Given I am on demo webapp home page
    When I enter "<todoitemadd>" in the 'What needs to be done?' text box
    And press enter
    Then I should see an item "<todoitemshow>"

  Examples:    : Validating todo item
  |todoitemadd          |todoitemshow
  |ToDo1                |ToDo1
  |ToDo2                |ToDo2
  |ToDo3                |ToDo3
  |ToDo4                |ToDo4