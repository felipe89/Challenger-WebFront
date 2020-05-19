require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome 
    # config.default_driver = :selenium_chrome_headless
    config.app_host = "http://automationpractice.com/index.php?controller=authentication&back=my-account"
    config.default_max_wait_time = 15

Capybara.ignore_hidden_elements = false

end







