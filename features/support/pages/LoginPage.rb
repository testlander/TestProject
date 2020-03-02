require 'selenium-webdriver'

class LoginPage

  USERNAME = {name: "uid"}




  def enterUsername(userName)
    $driver.find_element(USERNAME).send_keys(userName)
  end
end