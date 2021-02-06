require 'selenium-webdriver'
require 'test-unit'

class LocalTest < Test::Unit::TestCase
def setup
  @driver = Selenium::WebDriver.for :firefox
  @url = "http://localhost:3000/"
  @driver.manage.timeouts.implicit_wait = 15
  
 end

 def test_get_started_button
  @driver.get(@url)

  # Search for 
  get_started_box = @driver.find_element(:xpath, "//input[@type='submit' and @value='Get Started']")
  #assert_equal(get_started_box.value, "Get Started")

  @driver.action.move_to(get_started_box).click_and_hold
  sleep 2

  
  @driver.quit
 end

end