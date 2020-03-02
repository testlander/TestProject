require_relative '../../features/support/../../features/support/pages/LoginPage'

loginPage = LoginPage.new

Given(/^I visit demo web site$/) do
  $driver.navigate.to("http://www.demo.guru99.com/V4/")
end


When(/^I enter a valid username as "([^"]*)"$/) do |userName|
  # $driver.find_element(:name, "uid").send_keys(userName)
  loginPage.enterUsername(userName)
end

And(/^I enter a valid password as "([^"]*)"$/) do |password|
  $driver.find_element(:name, "password").send_keys(password)
  # sleep(2)
end

And(/^I click "([^"]*)" button$/) do |btnName|
  $driver.find_element(:xpath, "//input[@name='" + btnName + "']").click
end

Then(/^I validate that I successfully login to "([^"]*)"$/) do |expectedResult|
  actualResult = $driver.find_element(:xpath, "//*[@id='site-name']/a").text
  assert(actualResult.eql?(expectedResult))
  $driver.save_screenshot("screenshots.png")
end

And(/^I click "([^"]*)" link$/) do |link|
  $driver.find_element(:link, link).click
end