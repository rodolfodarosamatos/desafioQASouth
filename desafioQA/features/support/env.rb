require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require_relative "helpers"

@browser = ENV["BROWSER"]

Capybara.configure do |config|
  case @browser
  when "chrome"
    @driver = :selenium_chrome
  when "firefox"
    @driver = :selenium
  when "chrome_headless"
    @driver = :selenium_chrome_headless
  when "firefox_headless"
    @driver = :selenium_headless
  end
  config.default_driver = @driver
  config.app_host = "https://www.sicredi.com.br"
  config.default_max_wait_time = 10
  Capybara.page.driver.browser.manage.window.maximize
end
