require 'rspec'
require 'selenium-webdriver'
require_relative 'application'


@app = nil

RSpec.configure do |config|
  config.before(:example) do
    if @app.nil?
      @app = Application.new
    end
  end

  
end

