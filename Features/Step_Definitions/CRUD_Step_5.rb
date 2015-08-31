# Step Definitions for the below scenarios
# 5  A user can change views ("All", "Active", "Completed”).









Before do
  require "rubygems"
  require "rspec"
  require "watir-webdriver"

  browser = Watir::Browser.new
end


Given "/^I am on demo webapp home page$/" do

  browser.goto("https://todomvcapp-poc.herokuapp.com/")

end

When "/^click on "(.*?)"$/" do |view|

  if view == "all"
    browser.link(:href => '/todos').click
    if browser.link(:href => '/todos').attribute_value('class') == "selected"
      puts "View 'all' selected."
    else
      puts "View 'all' NOT selected."
    end
  elsif view == "active"
    browser.link(:href => '/todos/active').click

    if browser.link(:href => '/todos/active').attribute_value('class') == "selected"
      puts "View 'all' selected."
    else
      puts "View 'all' NOT selected."
    end
  else

    browser.link(:href => '/todos/completed').click

    if browser.link(:href => '/todos/completed').attribute_value('class') == "selected"
      puts "View 'completed' selected."
    else
      puts "View 'completed' NOT selected."
    end

    end


end

Then "/I should see an "(.*?)" itme$/" do |viewshow|


end



at_exit() do
  browser.close
end