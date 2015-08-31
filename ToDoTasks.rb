require "rubygems"
require "rspec"
require "watir-webdriver"

browser = Watir::Browser.new


########################### TESTCASE 1 ##############################################################
###########################  START     ##############################################################



# 1 --->>> The URL is correct.
puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
puts "Test Case 1 ::: The URL is correct."
puts ""

browser.goto("https://todomvcapp-poc.herokuapp.com/")

puts "Navigated URL::: " + browser.url
if browser.url == "https://todomvcapp-poc.herokuapp.com/"
  puts "URL Navigated is correct."
else
  puts "URL Navigated is NOT correct. Expected ::: https://todomvcapp-poc.herokuapp.com/ Actual ::: " + browser.url
end



###########################  END       ##############################################################
########################### TESTCASE 1 ##############################################################






########################### TESTCASE 2 ##############################################################
###########################  START     ##############################################################



# 2 --->>> The page title is correct.
puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
puts "Test Case 2 ::: The page title is correct."
puts ""



puts "Page Title ::: " + browser.title

if browser.title == "Rails TodoMVC"
  puts "Page title displayed correctly."
else
  puts "Page title displayed not correctly. Expected ::: Rails TodoMVC Actual ::: " + browser.title
end



###########################  END       ##############################################################
########################### TESTCASE 2 ##############################################################





########################### TESTCASE 3 ##############################################################
###########################  START     ##############################################################



# 3 --->>> A user can add a todo item.

puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
puts "Test Case 3 ::: A user can add a todo item."
puts ""

browser.text_field(:name => "todo[title]").set "ToDo1"
browser.text_field(:name => "todo[title]").send_keys :enter




###########################  END       ##############################################################
########################### TESTCASE 3 ##############################################################




########################### TESTCASE 3 ##############################################################
###########################  START     ##############################################################



# 4 --->>> The list of current todo items is correct.

puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
puts "Test Case 4 ::: The list of current todo items is correct."
puts ""

browser.text_field(:name => "todo[title]").set "ToDo1"
browser.text_field(:name => "todo[title]").send_keys :enter




###########################  END       ##############################################################
########################### TESTCASE 4 ##############################################################




########################### TESTCASE 5 ##############################################################
###########################  START     ##############################################################



# 5 --->>> A user can add a todo item.

puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
puts "Test Case 5 ::: A user can change views "
puts ""


browser.link(:href => '/todos').click


if browser.link(:href => '/todos').attribute_value('class') == "selected"
  puts "View 'all' selected."
else
  puts "View 'all' NOT selected."
end


browser.link(:href => '/todos/active').click

if browser.link(:href => '/todos/active').attribute_value('class') == "selected"
  puts "View 'all' selected."
else
  puts "View 'all' NOT selected."
end

browser.link(:href => '/todos/completed').click

if browser.link(:href => '/todos/completed').attribute_value('class') == "selected"
  puts "View 'completed' selected."
else
  puts "View 'completed' NOT selected."
end

browser.link(:href => '/todos').click



###########################  END       ##############################################################
########################### TESTCASE 5 ##############################################################



# 6  A user can mark an item as completed.
# 8  A user can clear the completed items.

puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
puts "Test Case 6 ::: A user can mark an item as completed. "
puts "Test Case 8 ::: A user can clear the completed items. "
puts ""

########################### TESTCASE 6 and 8 ##############################################################
###########################  START     ##############################################################

browser.checkboxes(:xpath, "//input[contains(@name,'todo[completed]')]").each do |checkbox|
  checkbox.set
  Puts "Check Box checked"
end

browser.link(:id => "clear-completed").click

###########################  END       ##############################################################
########################### TESTCASE 6 and 8 ##############################################################



puts "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$"
puts "Test Case 7 ::: A user can delete an item. "
puts ""

########################### TESTCASE 7 ##############################################################
###########################  START     ##############################################################

browser.element(:xpath => //a[@id='todo_79']/a"").click

###########################  END       ##############################################################
########################### TESTCASE 7 ##############################################################



browser.close

