require 'rspec'
require 'selenium-webdriver'
require 'capybara'
require 'site_prism'
require 'rspec'
require 'cucumber'

Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(app,browser : :remote, :url => 'http://localhost:4444/wd/hub', desired_capabilities => :chrome)


Capybara.configure do |config|
	config.run_server = false
	Capybara.default_driver = :site_prism
    Capybara.page.driver.browser.manage.window.maximize
    config.default_max_wait_time = 10
    config.app_host = 'http://www.automationpractice.com/index.php'
end
