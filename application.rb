require 'selenium-webdriver'
require_relative 'home_page'

class Application
  def initialize
    @driver = Selenium::WebDriver.for :chrome
    @home_page = HomePage.new @driver
  end


  def test
    @home_page.open
      if @home_page.open.on_this_page?
        @home_page.enter_query("kayaka")
      end
  end


end


