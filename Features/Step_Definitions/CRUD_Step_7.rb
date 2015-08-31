# Step Definitions for the below scenarios
# 7   A user can delete an item.









Before do
  require "rubygems"
  require "rspec"
  require "watir-webdriver"

  browser = Watir::Browser.new
end


Given "/^I am on demo webapp home page$/" do

  browser.goto("https://todomvcapp-poc.herokuapp.com/")

end

When "/^I mouse hover right corner of an "(.*?)" item"$/" do |todoitem|

 browser.checkbox(:id => 'todo_completed').click

end

And "/^click on cross mark"$/" do



end

Then "/"(.*?)" item should be deleted$/" do |todoitem|

  browser.element(:xpath => //a[@id='todo_79']/a"").click

end


at_exit() do
  browser.close
end