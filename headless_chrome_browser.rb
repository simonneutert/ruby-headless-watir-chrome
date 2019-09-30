require 'nokogiri'
require 'selenium-webdriver'
require 'headless'
require 'watir'

class HeadlessChromeBrowser
  attr_accessor :browser_args

  def initialize
    profile = Selenium::WebDriver::Chrome::Profile.new
    Selenium::WebDriver::Chrome.path = '/usr/bin/google-chrome-stable'
    Selenium::WebDriver::Chrome::Service.driver_path= '/chromedriver/chromedriver'
    @args = %w[headless no-sandbox]
  end

  def new_browser
    Watir::Browser.new :chrome, args: @args
  end
end
