require 'rubygems'
require 'selenium-webdriver'
require 'test/unit'

Before do
  Selenium::WebDriver::Chrome::Service::executable_path="C:/Users/meteb/RubymineProjects/TestProject/drivers/chromedriver.exe"
  $driver=Selenium::WebDriver.for :chrome
  $driver.manage.window.maximize
end

After do
  $driver.quit
end