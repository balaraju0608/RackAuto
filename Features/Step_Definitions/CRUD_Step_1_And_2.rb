# Step Definitions for the below scenarios
# 1  The URL is correct.
# 2  The page title is correct.








Before do
  require "rubygems"
  require "rspec"
  require "watir-webdriver"

  browser = Watir::Browser.new
end


When "/^I navigate "(.*?)"$/" do |AppURL|

  browser.goto("https://todomvcapp-poc.herokuapp.com/")

end

Then "/^the webapp URL should be "(.*?)" displayed$/" do |AppURL|

  puts "Navigated URL::: " + browser.url
  if browser.url == AppURL
    puts "URL Navigated is correct."
  else
    puts "URL Navigated is NOT correct. Expected ::: https://todomvcapp-poc.herokuapp.com/ Actual ::: " + browser.url
  end


end

And "/^the "(.*?)" of the demo webapp should display$/" do |title|

  if browser.title == title
    puts "Page title displayed correctly."
  else
    puts "Page title displayed not correctly. Expected ::: Rails TodoMVC Actual ::: " + browser.title
  end

end


at_exit() do
  browser.close
end