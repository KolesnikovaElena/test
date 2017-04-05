require 'selenium-webdriver'

class HomePage 

  def initialize(driver)
    @driver = driver
    @wait = Selenium::WebDriver::Wait.new(:timeout => 10) # seconds
  end


  def open
    @driver.get 'https://netuleny.com/ru/'
    self
  end

  def on_this_page?
    @driver.find_elements(:class => 'flickity-slider').size > 0
  end

  def enter_query(query)
     @driver.find_element(:css, '.input-group [TYPE=TEXT]').send_keys query
  end



end