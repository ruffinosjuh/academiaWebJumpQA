require "capybara" 
require "capybara/cucumber"
require "selenium-webdriver"
require "faker"
require "report_builder"
require "rspec"

EL = YAML.load_file(File.join(Dir.pwd, "data/elementos.yaml"))

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 10
end