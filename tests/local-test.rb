require 'selenium-webdriver'
require 'test-unit'

class LocalTest < Test::Unit::TestCase
  def setup
    @driver = Selenium::WebDriver.for :firefox
    @url = "http://localhost:3000/"
    @driver.manage.timeouts.implicit_wait = 15
  end

  def test_get_home_buttons
    @driver.get(@url)

    wait = Selenium::WebDriver::Wait.new(timeout: 10)

    sleep 2
    home_header = wait.until {@driver.find_element(:class, "About__info-header")}
    assert_equal(home_header.text, "The First Largest Coffee Database")

    wait.until {@driver.find_element(:class, "startedButton")}.click
    sleep 1
    assert_equal(@driver.current_url, "http://localhost:3000/auth/register/cmon_let_me_in?")

    wait.until {@driver.find_element(:link, "Beans")}.click
    sleep 1
    assert_equal(@driver.current_url, "http://localhost:3000/coffee_beans")

    wait.until {@driver.find_element(:link, "Shop")}.click
    sleep 1
    assert_equal(@driver.current_url, "http://localhost:3000/shop")

    wait.until {@driver.find_element(:link, "Home")}.click
    sleep 1
    assert_equal(@driver.current_url, "http://localhost:3000/")

    wait.until {@driver.find_element(:class, "signButton")}.click
    sleep 1
    assert_equal(@driver.current_url, "http://localhost:3000/auth/register/cmon_let_me_in?")

    
    @driver.quit
  end

end