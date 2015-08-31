# Step Definitions for the below scenarios
# 6  A user can mark an item as completed.
# 8  A user can clear the completed items.








Before do
  require "rubygems"
  require "rspec"
  require "watir-webdriver"

  browser = Watir::Browser.new
end


Given "/^I am on demo webapp home page$/" do

  browser.goto("https://todomvcapp-poc.herokuapp.com/")

end

When "/^I check on an item "(.*?)""$/" do |todoitemtobechecked|

 browser.checkbox(:id => 'todo_completed').click

end

And "/^click on link clear completed"$/" do

  browser.checkbox(:id => 'todo_completed').click

end

Then "/an item "(.*?)" should be completed$/" do |todoitemtobechecked|

  browser.checkboxes(:xpath, "//input[contains(@name,'todo[completed]')]").each do |checkbox|
    checkbox.set
    Puts "Check Box checked"
  end

end

And "/^the item "(.*?)" should cleared"$/" do |todoitemtobecleared|

  browser.link(:id => "clear-completed").click

  puts "Item Completed"

end

at_exit() do
  browser.close
end