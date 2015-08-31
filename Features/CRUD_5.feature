# Feature Fule for the below scenarios
# 5  A user can change views ("All", "Active", "Completed”).








Feature: UI Automation to cover all of CRUD scenarios of the Todo items
  In order to cover all of CRUD scenarios of the ToDo items
  As a Ruby automation developer
  I want to navigate demo webapp

  Scenario: A user can change views ("All", "Active", "Completed”)
    Given I am on demo webapp home page
    When click on "<view>"
    Then I should see an <viewshow> itme

  Examples:  : change views
    |view               |viewshow
    |all                |all
    |active             |active
    |completed          |completed
