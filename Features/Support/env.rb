

require 'jcode'
$KCODE = 'u'

require 'spec/expectations'

if ENV['FIREFOX']
  require 'watir-webdriver'
  Browser = Watir::Browser
  browser = Browser.new :ff
else
  case RUBY_PLATFORM
    when /win32|mingw/
      require 'watir'
      Browser = Watir::IE
      WIN32OLE.codepage = WIN32OLE::CP_UTF8
    when /java/
      require 'celerity'
      Browser = Celerity::Browser
    else
      raise "This platform is not supported (#{PLATFORM})"
  end
end

# "before all"
browser = Browser.new

Before do
  @browser = browser
  @test_server = "http://example.com"
end

# "after all"
at_exit do
  browser.close
end