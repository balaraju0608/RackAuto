# Feature Fule for the below scenarios
# 1  The URL is correct.
# 2  The page title is correct.








Feature: UI Automation to cover all of CRUD scenarios of the Todo items
  In order to cover all of CRUD scenarios of the ToDo items
  As a Ruby automation developer
  I want to navigate demo webapp

  Scenario: The URL is correct
    When I navigate "<AppURL>"
    Then the webapp URL should be "<AppURL>" displayed
     And the "<title>" of the demo webapp should display

  Examples:   : Validate DemoApp URL
    |URL                                        |title
    |https://todomvcapp-poc.herokuapp.com       |Rails TodoMVC
