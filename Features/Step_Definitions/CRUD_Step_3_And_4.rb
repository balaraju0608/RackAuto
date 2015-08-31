# Step Definitions for the below scenarios
# 3  A user can add a todo item.
# 4  The list of current todo items is correct.








Before do
  require "rubygems"
  require "rspec"
  require "watir-webdriver"

  browser = Watir::Browser.new
end


Given "/^I am on demo webapp home page$/" do

  browser.goto("https://todomvcapp-poc.herokuapp.com/")

end

When "/^I enter "(.*?)" in the 'What needs to be done?' text box$/" do |todoitemadd|


browser.text_field(:name => "todo[title]").set todoitem


end

And "/^press enter$/" do

  browser.text_field(:name => "todo[title]").send_keys :enter


end


Then "/^I should see an item "<todoitem>"$/" do |todoitemshow|

  browser.checkboxes(:xpath, "//input[contains(@name,'todo[completed]')]").each do |checkbox|
    Puts checkbox.text

  end

end

at_exit() do
  browser.close
end